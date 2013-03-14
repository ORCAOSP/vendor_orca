# Inherit device configuration
$(call inherit-product, device/lge/vs920/full_vs920.mk)

# Release name
PRODUCT_RELEASE_NAME := Spectrum

# Inherit CDMA common stuff
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/orca/configs/common.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/orca/overlay/iprj-common

# boot animation
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs920
PRODUCT_NAME := orca_vs920
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := VS920 4G
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=i_vzw TARGET_DEVICE=i_vzw BUILD_FINGERPRINT=Verizon/i_vzw/i_vzw:4.0.4/IMM76D/VS920ZV7.47e5065f:user PRIVATE_BUILD_DESC="i_vzw-user 4.0.4 IMM76D 47e5065f release-keys"
