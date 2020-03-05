# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sofiar device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sofiar
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_sofiar
PRODUCT_MODEL := moto g(8) power

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := sofiar
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sofiar_retail-user 10 QPE30.79-41 2dbb6 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/sofiar_retail/sofiar:10/QPE30.79-41/2dbb6:user/release-keys
