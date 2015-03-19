# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := components_components_strings_gyp
LOCAL_MODULE_STEM := components_strings
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "generate_components_strings":
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h: $(LOCAL_PATH)/tools/gritsettings/resource_ids $(LOCAL_PATH)/components/components_strings.grd $(LOCAL_PATH)/components/autofill_strings.grdp $(LOCAL_PATH)/components/bookmark_bar_strings.grdp $(LOCAL_PATH)/components/dom_distiller_strings.grdp $(LOCAL_PATH)/components/google_strings.grdp $(LOCAL_PATH)/components/omnibox_strings.grdp $(LOCAL_PATH)/components/pdf_strings.grdp $(LOCAL_PATH)/components/policy_strings.grdp $(LOCAL_PATH)/components/strings/components_strings_am.xtb $(LOCAL_PATH)/components/strings/components_strings_ar.xtb $(LOCAL_PATH)/components/strings/components_strings_bg.xtb $(LOCAL_PATH)/components/strings/components_strings_bn.xtb $(LOCAL_PATH)/components/strings/components_strings_ca.xtb $(LOCAL_PATH)/components/strings/components_strings_cs.xtb $(LOCAL_PATH)/components/strings/components_strings_da.xtb $(LOCAL_PATH)/components/strings/components_strings_de.xtb $(LOCAL_PATH)/components/strings/components_strings_el.xtb $(LOCAL_PATH)/components/strings/components_strings_en-GB.xtb $(LOCAL_PATH)/components/strings/components_strings_es-419.xtb $(LOCAL_PATH)/components/strings/components_strings_es.xtb $(LOCAL_PATH)/components/strings/components_strings_et.xtb $(LOCAL_PATH)/components/strings/components_strings_fa.xtb $(LOCAL_PATH)/components/strings/components_strings_fi.xtb $(LOCAL_PATH)/components/strings/components_strings_fil.xtb $(LOCAL_PATH)/components/strings/components_strings_fr.xtb $(LOCAL_PATH)/components/strings/components_strings_gu.xtb $(LOCAL_PATH)/components/strings/components_strings_hi.xtb $(LOCAL_PATH)/components/strings/components_strings_hr.xtb $(LOCAL_PATH)/components/strings/components_strings_hu.xtb $(LOCAL_PATH)/components/strings/components_strings_id.xtb $(LOCAL_PATH)/components/strings/components_strings_it.xtb $(LOCAL_PATH)/components/strings/components_strings_iw.xtb $(LOCAL_PATH)/components/strings/components_strings_ja.xtb $(LOCAL_PATH)/components/strings/components_strings_kn.xtb $(LOCAL_PATH)/components/strings/components_strings_ko.xtb $(LOCAL_PATH)/components/strings/components_strings_lt.xtb $(LOCAL_PATH)/components/strings/components_strings_lv.xtb $(LOCAL_PATH)/components/strings/components_strings_ml.xtb $(LOCAL_PATH)/components/strings/components_strings_mr.xtb $(LOCAL_PATH)/components/strings/components_strings_ms.xtb $(LOCAL_PATH)/components/strings/components_strings_nl.xtb $(LOCAL_PATH)/components/strings/components_strings_no.xtb $(LOCAL_PATH)/components/strings/components_strings_pl.xtb $(LOCAL_PATH)/components/strings/components_strings_pt-BR.xtb $(LOCAL_PATH)/components/strings/components_strings_pt-PT.xtb $(LOCAL_PATH)/components/strings/components_strings_ro.xtb $(LOCAL_PATH)/components/strings/components_strings_ru.xtb $(LOCAL_PATH)/components/strings/components_strings_sk.xtb $(LOCAL_PATH)/components/strings/components_strings_sl.xtb $(LOCAL_PATH)/components/strings/components_strings_sr.xtb $(LOCAL_PATH)/components/strings/components_strings_sv.xtb $(LOCAL_PATH)/components/strings/components_strings_sw.xtb $(LOCAL_PATH)/components/strings/components_strings_ta.xtb $(LOCAL_PATH)/components/strings/components_strings_te.xtb $(LOCAL_PATH)/components/strings/components_strings_th.xtb $(LOCAL_PATH)/components/strings/components_strings_tr.xtb $(LOCAL_PATH)/components/strings/components_strings_uk.xtb $(LOCAL_PATH)/components/strings/components_strings_vi.xtb $(LOCAL_PATH)/components/strings/components_strings_zh-CN.xtb $(LOCAL_PATH)/components/strings/components_strings_zh-TW.xtb $(LOCAL_PATH)/components/translate_strings.grdp $(LOCAL_PATH)/tools/grit/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit.py $(LOCAL_PATH)/tools/grit/grit/__init__.py $(LOCAL_PATH)/tools/grit/grit/clique.py $(LOCAL_PATH)/tools/grit/grit/constants.py $(LOCAL_PATH)/tools/grit/grit/exception.py $(LOCAL_PATH)/tools/grit/grit/extern/BogoFP.py $(LOCAL_PATH)/tools/grit/grit/extern/FP.py $(LOCAL_PATH)/tools/grit/grit/extern/__init__.py $(LOCAL_PATH)/tools/grit/grit/extern/tclib.py $(LOCAL_PATH)/tools/grit/grit/format/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/android_xml.py $(LOCAL_PATH)/tools/grit/grit/format/c_format.py $(LOCAL_PATH)/tools/grit/grit/format/chrome_messages_json.py $(LOCAL_PATH)/tools/grit/grit/format/data_pack.py $(LOCAL_PATH)/tools/grit/grit/format/html_inline.py $(LOCAL_PATH)/tools/grit/grit/format/js_map_format.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/policy_template_generator.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/template_formatter.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writer_configuration.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adm_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adml_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/admx_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/doc_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/ios_plist_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/json_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/mock_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_helper.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_strings_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/reg_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/template_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/writer_unittest_common.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/xml_formatted_writer.py $(LOCAL_PATH)/tools/grit/grit/format/rc.py $(LOCAL_PATH)/tools/grit/grit/format/rc_header.py $(LOCAL_PATH)/tools/grit/grit/format/repack.py $(LOCAL_PATH)/tools/grit/grit/format/resource_map.py $(LOCAL_PATH)/tools/grit/grit/gather/__init__.py $(LOCAL_PATH)/tools/grit/grit/gather/admin_template.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_html.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_scaled_image.py $(LOCAL_PATH)/tools/grit/grit/gather/igoogle_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/interface.py $(LOCAL_PATH)/tools/grit/grit/gather/json_loader.py $(LOCAL_PATH)/tools/grit/grit/gather/muppet_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/policy_json.py $(LOCAL_PATH)/tools/grit/grit/gather/rc.py $(LOCAL_PATH)/tools/grit/grit/gather/regexp.py $(LOCAL_PATH)/tools/grit/grit/gather/skeleton_gatherer.py $(LOCAL_PATH)/tools/grit/grit/gather/tr_html.py $(LOCAL_PATH)/tools/grit/grit/gather/txt.py $(LOCAL_PATH)/tools/grit/grit/grd_reader.py $(LOCAL_PATH)/tools/grit/grit/grit_runner.py $(LOCAL_PATH)/tools/grit/grit/lazy_re.py $(LOCAL_PATH)/tools/grit/grit/node/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/base.py $(LOCAL_PATH)/tools/grit/grit/node/custom/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/custom/filename.py $(LOCAL_PATH)/tools/grit/grit/node/empty.py $(LOCAL_PATH)/tools/grit/grit/node/include.py $(LOCAL_PATH)/tools/grit/grit/node/io.py $(LOCAL_PATH)/tools/grit/grit/node/mapping.py $(LOCAL_PATH)/tools/grit/grit/node/message.py $(LOCAL_PATH)/tools/grit/grit/node/misc.py $(LOCAL_PATH)/tools/grit/grit/node/structure.py $(LOCAL_PATH)/tools/grit/grit/node/variant.py $(LOCAL_PATH)/tools/grit/grit/pseudo.py $(LOCAL_PATH)/tools/grit/grit/pseudo_rtl.py $(LOCAL_PATH)/tools/grit/grit/scons.py $(LOCAL_PATH)/tools/grit/grit/shortcuts.py $(LOCAL_PATH)/tools/grit/grit/shortcuts_unittests.py $(LOCAL_PATH)/tools/grit/grit/tclib.py $(LOCAL_PATH)/tools/grit/grit/test_suite_all.py $(LOCAL_PATH)/tools/grit/grit/tool/__init__.py $(LOCAL_PATH)/tools/grit/grit/tool/android2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/build.py $(LOCAL_PATH)/tools/grit/grit/tool/buildinfo.py $(LOCAL_PATH)/tools/grit/grit/tool/count.py $(LOCAL_PATH)/tools/grit/grit/tool/diff_structures.py $(LOCAL_PATH)/tools/grit/grit/tool/interface.py $(LOCAL_PATH)/tools/grit/grit/tool/menu_from_parts.py $(LOCAL_PATH)/tools/grit/grit/tool/newgrd.py $(LOCAL_PATH)/tools/grit/grit/tool/postprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/preprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/rc2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/resize.py $(LOCAL_PATH)/tools/grit/grit/tool/test.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_postprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_preprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/transl2tc.py $(LOCAL_PATH)/tools/grit/grit/tool/unit.py $(LOCAL_PATH)/tools/grit/grit/tool/xmb.py $(LOCAL_PATH)/tools/grit/grit/util.py $(LOCAL_PATH)/tools/grit/grit/xtb_reader.py $(LOCAL_PATH)/tools/grit/grit_info.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating resources from components_strings.grd ($@)"
	$(hide)cd $(gyp_local_path)/components; mkdir -p $(gyp_shared_intermediate_dir)/components/strings/grit $(gyp_shared_intermediate_dir)/components/strings; python ../tools/grit/grit.py -i components_strings.grd build -f ../tools/gritsettings/resource_ids -o "$(gyp_shared_intermediate_dir)/components/strings" -D _chromium -E "CHROMIUM_BUILD=chromium" -t android -E "ANDROID_JAVA_TAGGED_ONLY=true" -D enable_printing -D use_concatenated_impulse_responses -D enable_webrtc

$(gyp_shared_intermediate_dir)/components/strings/components_strings_am.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ar.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_bg.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_bn.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ca.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_cs.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_da.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_de.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_el.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_en-GB.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_en-US.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_es.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_es-419.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_et.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_fa.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_fake-bidi.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_fi.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_fil.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_fr.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_gu.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_he.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_hi.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_hr.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_hu.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_id.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_it.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ja.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_kn.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ko.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_lt.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_lv.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ml.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_mr.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ms.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_nl.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_nb.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_pl.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_pt-BR.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_pt-PT.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ro.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ru.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_sk.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_sl.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_sr.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_sv.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_sw.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_ta.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_te.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_th.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_tr.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_uk.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_vi.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_zh-CN.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;
$(gyp_shared_intermediate_dir)/components/strings/components_strings_zh-TW.pak: $(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/components/strings/grit/components_strings.h \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_am.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ar.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_bg.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_bn.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ca.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_cs.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_da.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_de.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_el.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_en-GB.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_en-US.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_es.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_es-419.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_et.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_fa.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_fake-bidi.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_fi.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_fil.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_fr.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_gu.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_he.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_hi.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_hr.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_hu.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_id.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_it.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ja.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_kn.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ko.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_lt.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_lv.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ml.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_mr.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ms.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_nl.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_nb.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_pl.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_pt-BR.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_pt-PT.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ro.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ru.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_sk.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_sl.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_sr.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_sv.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_sw.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_ta.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_te.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_th.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_tr.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_uk.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_vi.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_zh-CN.pak \
	$(gyp_shared_intermediate_dir)/components/strings/components_strings_zh-TW.pak

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: components_components_strings_gyp

# Alias gyp target name.
.PHONY: components_strings
components_strings: components_components_strings_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
