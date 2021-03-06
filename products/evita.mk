# Specify phone tech before including full_phone
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := evita

# Inherit some common CM stuff.
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/evita/device.mk)

# Device naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := orca_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.0.4/IMM76D/79936.7:user/release-keys PRIVATE_BUILD_DESC="2.20.502.7 CL79936 release-keys" BUILD_NUMBER=79936

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip