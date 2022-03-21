# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from evergreen device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := evergreen
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_evergreen
PRODUCT_MODEL := 21091116AC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := evergreen
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="evergreen-user 11 RP1A.200720.011 V12.5.3.0.RGBMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/evergreen_global/evergreen:11/RP1A.200720.011/V12.5.3.0.RGBMIXM:user/release-keys
