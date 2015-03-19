// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "extensions/renderer/dom_activity_logger.h"

#include "content/public/renderer/render_thread.h"
#include "content/public/renderer/v8_value_converter.h"
#include "extensions/common/dom_action_types.h"
#include "extensions/common/extension_messages.h"
#include "extensions/renderer/activity_log_converter_strategy.h"
#include "third_party/WebKit/public/platform/WebString.h"
#include "third_party/WebKit/public/platform/WebURL.h"

using content::V8ValueConverter;
using blink::WebString;
using blink::WebURL;

namespace extensions {

namespace {

// Converts the given |v8_value| and appends it to the given |list|, if the
// conversion succeeds.
void AppendV8Value(const std::string& api_name,
                   const v8::Handle<v8::Value>& v8_value,
                   base::ListValue* list) {
  DCHECK(list);
  scoped_ptr<V8ValueConverter> converter(V8ValueConverter::create());
  ActivityLogConverterStrategy strategy;
  converter->SetFunctionAllowed(true);
  converter->SetStrategy(&strategy);
  scoped_ptr<base::Value> value(converter->FromV8Value(
      v8_value, v8::Isolate::GetCurrent()->GetCurrentContext()));

  if (value.get())
    list->Append(value.release());
}

}  // namespace

DOMActivityLogger::DOMActivityLogger(const std::string& extension_id)
    : extension_id_(extension_id) {
}

DOMActivityLogger::~DOMActivityLogger() {}

void DOMActivityLogger::AttachToWorld(int world_id,
                                      const std::string& extension_id) {
#if defined(ENABLE_EXTENSIONS)
  // If there is no logger registered for world_id, construct a new logger
  // and register it with world_id.
  if (!blink::hasDOMActivityLogger(world_id,
                                   WebString::fromUTF8(extension_id))) {
    DOMActivityLogger* logger = new DOMActivityLogger(extension_id);
    blink::setDOMActivityLogger(world_id,
                                WebString::fromUTF8(extension_id),
                                logger);
  }
#endif
}

void DOMActivityLogger::logGetter(const WebString& api_name,
                                  const WebURL& url,
                                  const WebString& title) {
  SendDomActionMessage(api_name.utf8(),
                       url,
                       title,
                       DomActionType::GETTER,
                       scoped_ptr<base::ListValue>(new base::ListValue()));
}

void DOMActivityLogger::logSetter(const WebString& api_name,
                                  const v8::Handle<v8::Value>& new_value,
                                  const WebURL& url,
                                  const WebString& title) {
  logSetter(api_name, new_value, v8::Handle<v8::Value>(), url, title);
}

void DOMActivityLogger::logSetter(const WebString& api_name,
                                  const v8::Handle<v8::Value>& new_value,
                                  const v8::Handle<v8::Value>& old_value,
                                  const WebURL& url,
                                  const WebString& title) {
  scoped_ptr<base::ListValue> args(new base::ListValue);
  std::string api_name_utf8 = api_name.utf8();
  AppendV8Value(api_name_utf8, new_value, args.get());
  if (!old_value.IsEmpty())
    AppendV8Value(api_name_utf8, old_value, args.get());
  SendDomActionMessage(
      api_name_utf8, url, title, DomActionType::SETTER, args.Pass());
}

void DOMActivityLogger::logMethod(const WebString& api_name,
                                  int argc,
                                  const v8::Handle<v8::Value>* argv,
                                  const WebURL& url,
                                  const WebString& title) {
  scoped_ptr<base::ListValue> args(new base::ListValue);
  std::string api_name_utf8 = api_name.utf8();
  for (int i = 0; i < argc; ++i)
    AppendV8Value(api_name_utf8, argv[i], args.get());
  SendDomActionMessage(
      api_name_utf8, url, title, DomActionType::METHOD, args.Pass());
}

void DOMActivityLogger::logEvent(const WebString& event_name,
                                 int argc,
                                 const WebString* argv,
                                 const WebURL& url,
                                 const WebString& title) {
  scoped_ptr<base::ListValue> args(new base::ListValue);
  std::string event_name_utf8 = event_name.utf8();
  for (int i = 0; i < argc; ++i)
    args->Append(new base::StringValue(argv[i]));
  SendDomActionMessage(
      event_name_utf8, url, title, DomActionType::METHOD, args.Pass());
}

void DOMActivityLogger::SendDomActionMessage(const std::string& api_call,
                                             const GURL& url,
                                             const base::string16& url_title,
                                             DomActionType::Type call_type,
                                             scoped_ptr<base::ListValue> args) {
  ExtensionHostMsg_DOMAction_Params params;
  params.api_call = api_call;
  params.url = url;
  params.url_title = url_title;
  params.call_type = call_type;
  params.arguments.Swap(args.get());
  content::RenderThread::Get()->Send(
      new ExtensionHostMsg_AddDOMActionToActivityLog(extension_id_, params));
}

}  // namespace extensions
