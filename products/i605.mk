# Inherit AOSP device configuration for i605.
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# t0ltecdma Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/note2-common

# Setup device specific product configuration.
PRODUCT_NAME := orca_i605
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i605
PRODUCT_MODEL := SCH-I605
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.1.1/JRO03C/I605VRALJB:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.1.1 JRO03C I605VRALJB release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

