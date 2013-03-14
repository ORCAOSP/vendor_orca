# Inherit AOSP device configuration for Galaxy S III Metro PCS.
$(call inherit-product, device/samsung/d2mtr/full_d2mtr.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/orca/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/s3-common

# Setup device specific product configuration.
PRODUCT_NAME := orca_d2mtr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2mtr
PRODUCT_MODEL := SCH-R530M
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="samsung/d2usc/d2usc:4.1.1/JRO03L/R530UVXALK5:user/release-keys" PRIVATE_BUILD_DESC="d2usc-user 4.1.1 JRO03L R530UVXALK5 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
     vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
