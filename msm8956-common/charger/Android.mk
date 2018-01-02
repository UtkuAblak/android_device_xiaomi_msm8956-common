LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := healthd_xiaomi
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_SRC_FILES := healthd_xiaomi
LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)

# Symlink /charger to /sbin/healthd_xiaomi
#LOCAL_POST_INSTALL_CMD := $(hide) mkdir -p $(TARGET_ROOT_OUT) \
#    rm -f $(TARGET_ROOT_OUT)/charger && ln -sf /sbin/healthd $(TARGET_ROOT_OUT)/charger

include $(BUILD_PREBUILT)
