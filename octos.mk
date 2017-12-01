# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/octos/config/common.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/moto/shamu/apns-conf.xml:system/etc/apns-conf.xml

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

#DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-lineage

## Device identifier. This must come after all inclusions
PRODUCT_NAME := octos_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27M 4299435 release-keys"
