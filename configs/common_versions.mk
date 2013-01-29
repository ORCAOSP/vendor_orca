# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/orca/tools/getdate)

ifneq ($(ORCA_BUILD),)
	# ORCA_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=drewgaren \
	    ro.goo.rom=Orca \
	    ro.goo.version=1 \
		ro.orca.version=$(TARGET_PRODUCT)_nightly_$(shell echo $(ORCA_BUILD) | cut -d/ -f2)
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.orca.version=$(TARGET_PRODUCT)_nightly_$(DATE)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
