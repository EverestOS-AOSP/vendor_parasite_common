# Parasite Configuration
VENDOR_PARASITE_COMMON_DIR := vendor/parasite/common
$(call inherit-product, $(VENDOR_PARASITE_COMMON_DIR)/config/common.mk)

# Parasite Certification
$(call inherit-product-if-exists, vendor/parasite/certification/config.mk)

# Parasite Signatures
$(call inherit-product-if-exists, vendor/parasite/signatures/config.mk)

# Parasite Prebuilts
$(call inherit-product-if-exists, vendor/parasite/prebuilts/config.mk)

# GMS
TARGET_INCLUDE_PIXEL_FRAMEWORKS := false
WITH_GAPPS ?= true
ifeq ($(WITH_GAPPS),true)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
endif

# Microsoft
TARGET_PHONE_LINK_SUPPORTED := false
$(call inherit-product-if-exists, vendor/microsoft/mms/products/mms.mk)
