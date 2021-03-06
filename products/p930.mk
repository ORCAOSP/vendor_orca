# Inherit device configuration
$(call inherit-product, device/lge/p930/full_p930.mk)

# Release name
PRODUCT_RELEASE_NAME := NitroHD

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/orca/configs/common.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/orca/overlay/iprj-common

# boot animation
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p930
PRODUCT_NAME := orca_p930
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P930
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES ...
