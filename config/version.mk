## ORCA Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.orca.version=$(TARGET_PRODUCT)-nightly-1 \
    ro.modversion=$(TARGET_PRODUCT)_1_$(DATE)

