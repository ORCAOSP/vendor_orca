# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit Orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# crespo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := orca_passion
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := passion
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT="google/passion/passion:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="passion-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
