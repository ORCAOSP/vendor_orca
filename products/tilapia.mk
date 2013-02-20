# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/orca/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/grouper

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := orca_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_ID=JOP40D BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_BUILD_PROP_OVERRIDES +=   

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

