#
# Copyright (C) 2015 The Aosp Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Variables
LOCAL_PATH := $(call my-dir)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full.mk)

TARGET_PREBUILT_KERNEL 	:= device/huawei/hwmt7/kernel

# This device is xxhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xxhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
#PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
#PRODUCT_AAPT_PREF_CONFIG := xxhdpi

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
DEVICE_RESOLUTION := 1080x1920

