# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/manta

# Setup device specific product configuration
PRODUCT_NAME := orca_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation-alt.zip
