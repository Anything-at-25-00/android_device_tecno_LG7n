#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/LG7n
KERNEL_PATH := $(DEVICE_PATH)-kernel

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1640
TARGET_SCREEN_WIDTH := 720

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
	FrameworksResOverlayLG8n \
	SettingsProviderOverlayLG8n \
	SettingsResOverlayLG8n \
	SystemUIOverlayLG8n \
	TelephonyOverlayLG8n \
	WifiResOverlayLG8n

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/tecno/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/LG7n/LG7n-vendor.mk)
