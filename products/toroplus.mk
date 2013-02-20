# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Toroplus Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/toroplus

# Setup device specific product configuration.
PRODUCT_NAME := orca_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
