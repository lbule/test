#
# Copyright (C) 2016 The CyanogenMod Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),QK1605)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

include device/360/QK1605/tftp.mk

include device/360/QK1605/kernel/AndroidKernel.mk

FIRMWARE_ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 adsp.b06 \
    adsp.b07 adsp.b08 adsp.b09 adsp.b10 adsp.b11 adsp.b12 adsp.b13 \
    adsp.b14 adsp.mdt

FIRMWARE_ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_ADSP_SYMLINKS)

FIRMWARE_CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt

FIRMWARE_CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB_IMAGES)))
$(FIRMWARE_CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cmnlib Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB_SYMLINKS)

FIRMWARE_CMNLIB64_IMAGES := \
    cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib64.mdt

FIRMWARE_CMNLIB64_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB64_IMAGES)))
$(FIRMWARE_CMNLIB64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cmnlib64 Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB64_SYMLINKS)

FIRMWARE_WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 \
    widevine.b04 widevine.b05 widevine.b06 widevine.mdt

FIRMWARE_WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FIRMWARE_WIDEVINE_IMAGES)))
$(FIRMWARE_WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WIDEVINE_SYMLINKS)

GOODIXFP_IMAGES := \
   goodixfp.b00 goodixfp.b01 goodixfp.b02 goodixfp.b03 \
   goodixfp.b04 goodixfp.b05 goodixfp.b06 goodixfp.mdt

GOODIXFP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(GOODIXFP_IMAGES)))
$(GOODIXFP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GOODIXFP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GOODIXFP_SYMLINKS)

KEYMASTER_IMAGES := \
    keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 \
    keymaster.b04 keymaster.b05 keymaster.b06 keymaster.mdt

KEYMASTER_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(KEYMASTER_IMAGES))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

MDTP_IMAGES := \
   mdtp.b00 mdtp.b01 mdtp.b02 mdtp.b03 \
   mdtp.b04 mdtp.b05 mdtp.b06 mdtp.mdt

MDTP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MDTP_IMAGES)))
$(MDTP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDTP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MDTP_SYMLINKS)

VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mbn venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
	ln -sf /persist/WCNSS_qcom_wlan_nv.bin \
	$(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin; \
	ln -sf /persist/WCNSS_wlan_dictionary.dat \
	$(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

$(shell mkdir -p $(TARGET_OUT)/lib/modules; \
    ln -sf /system/lib/modules/pronto/pronto_wlan.ko \
        $(TARGET_OUT)/lib/modules/wlan.ko)

endif
