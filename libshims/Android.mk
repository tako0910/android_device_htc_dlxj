LOCAL_PATH := $(call my-dir)

# camera

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     gui/SensorManager.cpp \
     ui/GraphicBuffer.cpp \
     ui/GraphicBufferAllocator.cpp \
     ui/GraphicBufferMapper.cpp \
     MemoryHeapPmem.cpp \
     MemoryBase.c \
     SharedBuffer.cpp \
     VectorImpl.cpp

LOCAL_C_INCLUDES += \
     external/safe-iop/include \
     system/core/libutils

LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware libui libgui libbinder libutils libsync libshim_sensors

LOCAL_MODULE := libshim_camera
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# libqc-opt

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu51.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# htc logging symbols

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    htc_log.c

LOCAL_MODULE := libshim_log
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# sensors

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     sensors.c \
     SharedBuffer.cpp \
     VectorImpl.cpp

LOCAL_C_INCLUDES += \
     external/safe-iop/include \
     system/core/libutils

LOCAL_SHARED_LIBRARIES := liblog

LOCAL_MODULE := libshim_sensors
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# Widevine

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    wvm_shim.cpp

LOCAL_SHARED_LIBRARIES := libstagefright_foundation
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
