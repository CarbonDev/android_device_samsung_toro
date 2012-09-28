# name
PRODUCT_RELEASE_NAME := GN-CDMA

# device
$(call inherit-product-if-exists, device/samsung/toro/full_toro.mk)

# cdma
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# nfc
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# products
PRODUCT_DEVICE := toro
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.toro.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=424425 \
    PRODUCT_NAME=mysid \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys" \
    BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys"

