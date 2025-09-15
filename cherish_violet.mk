#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Cherish OS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

#Cherish
CHERISH_BUILD_TYPE := UNOFFICIAL
CHERISH_MAINTAINER := Chronix
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

#GMS
WITH_GMS := true
WITH_GAPPS := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "violet-user 10 QKQ1.190915.002 V12.5.1.0 release-keys")

    BUILD_FINGERPRINT := xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
   ro.build.fingerprint=$(BUILD_FINGERPRINT)
   ro.cherish.maintainer=Chronix


