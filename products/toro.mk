# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit Orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Toro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := orca_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=JOP40C BUILD_FINGERPRINT=google/yakju/toro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
