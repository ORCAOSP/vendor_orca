# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(ORCA_BUILD),)
# Orca Official properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Orca \
    ro.goo.version=$(DATE) \
    ro.orca.version=ORCA-STABLE-$(TARGET_PRODUCT)-$(ORCA_BUILD)
else
# RootBox Nightlies properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Orca_nighly \
    ro.goo.version=$(DATE) \
    ro.orca.version=ORCA-NIGHTLY-$(TARGET_PRODUCT)-OTA-$(DATE)
endif


# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
