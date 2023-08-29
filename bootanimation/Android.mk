LOCAL_PATH := $(call my-dir)

TARGET_BOOTANIMATION := vendor/bmtron/bootanimation/bootanimation.zip

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION)
	@mkdir -p $(dir $@)
    @cp $(TARGET_BOOTANIMATION) $@
