LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CERTIFICATE := shared
LOCAL_MODULE := KDDI_Felicalock
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := KDDI_Felicalock
LOCAL_SRC_FILES := KDDI_Felicalock.apk

include $(BUILD_PREBUILT)

