# 
# Copyright 2008 The Android Open Source Project
#
# Zip alignment tool
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	ZipAlign.cpp \
	ZipEntry.cpp \
	ZipFile.cpp

LOCAL_C_INCLUDES += external/zlib

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
    libz

LOCAL_C_INCLUDES := \
	external/zlib

ifeq ($(HOST_OS),linux)
LOCAL_LDLIBS += -lrt
endif

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := armzipalign

include $(BUILD_EXECUTABLE)
