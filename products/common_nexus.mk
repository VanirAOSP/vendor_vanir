# set flag to exclude nfc enhanced
PRODUCT_IS_A_NEXUS := true

ifeq ($(NEXUS_CATEGORY),)
$(error Nexus devices must set NEXUS_CATEGORY in their makefile before including common_nexus.mk - it is used to include either common_phones or common_tabs)
endif

# human centipede
$(call inherit-product, vendor/vanir/products/common_$(NEXUS_CATEGORY).mk)
