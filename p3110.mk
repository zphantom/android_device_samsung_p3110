#
# Copyright (C) 2012 The CyanogenMod Project
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

$(call inherit-product, device/samsung/p3100/p31xx-common.mk)

LOCAL_PATH := device/samsung/p3110

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/default_gain.conf:system/etc/default_gain.conf \
	$(LOCAL_PATH)/configs/tinyucm.conf:system/etc/tinyucm.conf \
	$(LOCAL_PATH)/configs/Volume.db:system/etc/Volume.db

# Use the non-open-source parts, if they're present
$(call inherit-product, vendor/samsung/p31xx/p3110-vendor.mk)
