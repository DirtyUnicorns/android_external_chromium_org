// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "base/base_paths.h"
#include "base/bind.h"
#include "base/macros.h"
#include "base/path_service.h"
#include "base/test/launcher/unit_test_launcher.h"
#include "base/test/test_suite.h"
#include "testing/gtest/include/gtest/gtest.h"
#include "ui/base/resource/resource_bundle.h"
#include "ui/base/ui_base_paths.h"
#include "ui/gfx/gfx_paths.h"
#include "ui/gl/gl_surface.h"

namespace {

class AthenaTestSuite : public base::TestSuite {
 public:
  AthenaTestSuite(int argc, char** argv) : TestSuite(argc, argv) {}
  virtual ~AthenaTestSuite() {}

 protected:
  // base::TestSuite:
  virtual void Initialize() OVERRIDE {
    base::TestSuite::Initialize();
    gfx::GLSurface::InitializeOneOffForTests();
    gfx::RegisterPathProvider();
    ui::RegisterPathProvider();

    base::FilePath test_pak_path;
    ASSERT_TRUE(PathService::Get(base::DIR_MODULE, &test_pak_path));
    test_pak_path = test_pak_path.AppendASCII("athena_resources.pak");
    ui::ResourceBundle::InitSharedInstanceWithPakPath(test_pak_path);
  }
  virtual void Shutdown() OVERRIDE {
    ui::ResourceBundle::CleanupSharedInstance();
    base::TestSuite::Shutdown();
  }

 private:
  DISALLOW_COPY_AND_ASSIGN(AthenaTestSuite);
};

}  // namespace

int main(int argc, char** argv) {
  AthenaTestSuite test_suite(argc, argv);

  return base::LaunchUnitTestsSerially(
      argc,
      argv,
      base::Bind(&AthenaTestSuite::Run, base::Unretained(&test_suite)));
}
