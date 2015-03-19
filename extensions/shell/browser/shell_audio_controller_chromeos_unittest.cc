// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "extensions/shell/browser/shell_audio_controller_chromeos.h"

#include "base/macros.h"
#include "chromeos/audio/audio_device.h"
#include "chromeos/audio/cras_audio_handler.h"
#include "chromeos/dbus/audio_node.h"
#include "chromeos/dbus/cras_audio_client_stub_impl.h"
#include "chromeos/dbus/dbus_thread_manager.h"
#include "testing/gtest/include/gtest/gtest.h"

using chromeos::AudioDevice;
using chromeos::AudioNode;
using chromeos::AudioNodeList;

namespace extensions {

class ShellAudioControllerTest : public testing::Test {
 public:
  ShellAudioControllerTest() : next_node_id_(1) {
    // This also initializes DBusThreadManager.
    scoped_ptr<chromeos::DBusThreadManagerSetter> dbus_setter =
        chromeos::DBusThreadManager::GetSetterForTesting();

    audio_client_ = new chromeos::CrasAudioClientStubImpl();
    audio_client_->SetAudioNodesForTesting(AudioNodeList());
    dbus_setter->SetCrasAudioClient(
        make_scoped_ptr(audio_client_).PassAs<chromeos::CrasAudioClient>());

    chromeos::CrasAudioHandler::Initialize(
        new ShellAudioController::PrefHandler());
    audio_handler_ = chromeos::CrasAudioHandler::Get();

    controller_.reset(new ShellAudioController());
  }

  virtual ~ShellAudioControllerTest() {
    controller_.reset();
    chromeos::CrasAudioHandler::Shutdown();
    chromeos::DBusThreadManager::Shutdown();
  }

 protected:
  // Fills a AudioNode for use by tests.
  AudioNode CreateNode(chromeos::AudioDeviceType type) {
    AudioNode node;
    node.is_input =
        type == chromeos::AUDIO_TYPE_MIC ||
        type == chromeos::AUDIO_TYPE_INTERNAL_MIC ||
        type == chromeos::AUDIO_TYPE_KEYBOARD_MIC;
    node.id = next_node_id_++;
    node.type = AudioDevice::GetTypeString(type);
    return node;
  }

  // Changes the active state of the node with |id| in |nodes|.
  void SetNodeActive(AudioNodeList* nodes, uint64 id, bool active) {
    for (AudioNodeList::iterator it = nodes->begin();
         it != nodes->end(); ++it) {
      if (it->id == id) {
        it->active = active;
        return;
      }
    }
    ASSERT_TRUE(false) << "Didn't find ID " << id;
  }

  chromeos::CrasAudioClientStubImpl* audio_client_;  // Not owned.
  chromeos::CrasAudioHandler* audio_handler_;  // Not owned.
  scoped_ptr<ShellAudioController> controller_;

  // Next audio node ID to be returned by CreateNode().
  uint64 next_node_id_;

 private:
  DISALLOW_COPY_AND_ASSIGN(ShellAudioControllerTest);
};

// Tests that higher-priority devices are activated as soon as they're
// connected.
TEST_F(ShellAudioControllerTest, SelectBestDevices) {
  AudioNode internal_speaker =
      CreateNode(chromeos::AUDIO_TYPE_INTERNAL_SPEAKER);
  AudioNode internal_mic = CreateNode(chromeos::AUDIO_TYPE_INTERNAL_MIC);
  AudioNode headphone = CreateNode(chromeos::AUDIO_TYPE_HEADPHONE);
  AudioNode external_mic = CreateNode(chromeos::AUDIO_TYPE_MIC);

  // AudioDevice gives the headphone jack a higher priority than the internal
  // speaker and an external mic a higher priority than the internal mic, so we
  // should start out favoring headphones and the external mic.
  AudioNodeList all_nodes;
  all_nodes.push_back(internal_speaker);
  all_nodes.push_back(internal_mic);
  all_nodes.push_back(headphone);
  all_nodes.push_back(external_mic);
  audio_client_->SetAudioNodesAndNotifyObserversForTesting(all_nodes);
  EXPECT_EQ(headphone.id, audio_handler_->GetPrimaryActiveOutputNode());
  EXPECT_EQ(external_mic.id, audio_handler_->GetPrimaryActiveInputNode());

  // Unplug the headphones and mic and check that we switch to the internal
  // devices.
  AudioNodeList internal_nodes;
  internal_nodes.push_back(internal_speaker);
  internal_nodes.push_back(internal_mic);
  audio_client_->SetAudioNodesAndNotifyObserversForTesting(internal_nodes);
  EXPECT_EQ(internal_speaker.id, audio_handler_->GetPrimaryActiveOutputNode());
  EXPECT_EQ(internal_mic.id, audio_handler_->GetPrimaryActiveInputNode());

  // Switch back to the external devices. Mark the previously-activated internal
  // devices as being active so CrasAudioHandler doesn't complain.
  SetNodeActive(&all_nodes, internal_speaker.id, true);
  SetNodeActive(&all_nodes, internal_mic.id, true);
  audio_client_->SetAudioNodesAndNotifyObserversForTesting(all_nodes);
  EXPECT_EQ(headphone.id, audio_handler_->GetPrimaryActiveOutputNode());
  EXPECT_EQ(external_mic.id, audio_handler_->GetPrimaryActiveInputNode());
}

// Tests that active audio devices are unmuted and set to 100% volume.
TEST_F(ShellAudioControllerTest, MaxVolume) {
  AudioNodeList nodes;
  nodes.push_back(CreateNode(chromeos::AUDIO_TYPE_INTERNAL_SPEAKER));
  nodes.push_back(CreateNode(chromeos::AUDIO_TYPE_INTERNAL_MIC));
  audio_client_->SetAudioNodesAndNotifyObserversForTesting(nodes);

  EXPECT_FALSE(audio_handler_->IsOutputMuted());
  EXPECT_FALSE(audio_handler_->IsInputMuted());
  EXPECT_EQ(100, audio_handler_->GetOutputVolumePercent());
  EXPECT_EQ(100, audio_handler_->GetInputGainPercent());
}

}  // namespace extensions
