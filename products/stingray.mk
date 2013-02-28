$(call inherit-product, device/moto/stingray/full_stingray.mk)

$(call inherit-product, vendor/orca/configs/common_tablet.mk)

# xoom Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/xoom

# Discard inherited values and use our own instead.
PRODUCT_NAME := orca_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=JDQ39 BUILD_FINGERPRINT=verizon/trygon/stingray:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="trygon-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
