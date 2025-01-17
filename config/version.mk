# Branding
CUSTOM_BRAND := EverestOS

# Everest Version
EVEREST_VERSION := 2.0
EVEREST_CODENAME := Sagarmatha
EVEREST_BUILDTYPE ?= Community

CUSTOM_BUILD_DATE := $(shell date +%Y%m%d-%H%M)
CUSTOM_BUILD_DATE_UTC := $(shell date '+%Y-%m-%d %H:%M UTC %s')
CUSTOM_BUILD_VERSION := $(BUILD_ID)

CUSTOM_VERSION := $(CUSTOM_BRAND)-$(EVEREST_VERSION)-$(EVEREST_BUILDTYPE)_$(LINEAGE_BUILD)-$(EVEREST_EDITION)-$(CUSTOM_BUILD_DATE)

PRODUCT_BRAND := $(CUSTOM_BRAND)
LINEAGE_BUILD_DATE := $(CUSTOM_BUILD_DATE)
LINEAGE_VERSION := $(CUSTOM_VERSION)
LINEAGE_DISPLAY_VERSION := $(CUSTOM_BUILD_VERSION)
LINEAGE_BUILDTYPE := $(EVEREST_BUILDTYPE)

# Versioning props
PRODUCT_SYSTEM_PROPERTIES += \
    ro.custom.brand=$(PRODUCT_BRAND) \
    ro.custom.build.version=$(PLATFORM_DISPLAY_VERSION).$(CUSTOM_BUILD_VERSION) \
    ro.custom.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.custom.version=$(LINEAGE_VERSION) \
    ro.modversion=$(LINEAGE_VERSION) \
    ro.everest.buildtype=$(LINEAGE_BUILDTYPE) \
    ro.everest.version=$(EVEREST_VERSION) \
    ro.everest.codename=$(EVEREST_CODENAME) \
    ro.everest.edition=$(EVEREST_EDITION) \
    ro.everest.maintainer=$(EVEREST_MAINTAINER)
