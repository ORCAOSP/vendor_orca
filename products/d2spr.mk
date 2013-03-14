# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/s3-common

# OVERLAY_TARGET adds overlay asset source
#OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := orca_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="d2spr-user 4.1.2 JZO54K I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2spr/d2spr:4.1.2/JZO54K/I747UCALEM:user/release-keys"

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
