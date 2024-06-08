# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Enable Compose in SystemUI by default.
SYSTEMUI_USE_COMPOSE ?= true

# Reduce system server verbosity.
ifeq ($(TARGET_BUILD_VARIANT), user)
PRODUCT_SYSTEM_SERVER_DEBUG_INFO := false
endif

# Shutdown
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.shutdown_timeout?=0

# EGL - Blobcache configuration
PRODUCT_VENDOR_PROPERTIES += \
    ro.egl.blobcache.multifile=true \
    ro.egl.blobcache.multifile_limit=33554432

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Disable MTE Async for system server
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.arm64.memtag.system_server?=off

# Disable Scudo to save RAM and use 32-bit libc variant by default
PRODUCT_DISABLE_SCUDO ?= true
MALLOC_SVELTE_FOR_LIBC32 ?= true

# Zygote
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    zygote.critical_window.minute?=10

# Inherit art options
include vendor/aosp/config/common/art.mk

# Inherit LMKD options
include vendor/aosp/config/common/lmkd.mk
