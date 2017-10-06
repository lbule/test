#
# Copyright 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from QK1605 device
$(call inherit-product, device/360/QK1605/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := 360
PRODUCT_BRAND := 360
PRODUCT_DEVICE := QK1605
PRODUCT_NAME := mk_QK1605
PRODUCT_MANUFACTURER := 360
PRODUCT_MODEL := 360 N5
TARGET_VENDOR := 360

PRODUCT_GMS_CLIENTID_BASE := android-360

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=360/QK1605/QK1605:7.1.1/NMF26F/7.0.043.PX.170727.360_360_QK1605_CN:user/release-keys \
    PRIVATE_BUILD_DESC="QK1605-user 7.1.1 NMF26F 7.0.043.PX.170727 release-keys"
endif
