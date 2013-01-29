# Inherit common stuff
$(call inherit-product, vendor/orca/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common_tablet

