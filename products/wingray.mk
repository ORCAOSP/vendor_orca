$(call inherit-product, device/moto/wingray/full_wingray.mk)

$(call inherit-product, vendor/orca/configs/common_tablet.mk)

# xoom Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common_tablet

# Discard inherited values and use our own instead.
PRODUCT_NAME := orca_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=tervigon BUILD_ID=JDQ39 BUILD_FINGERPRINT=motorola/tervigon/wingray:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
