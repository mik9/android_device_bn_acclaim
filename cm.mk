# Release name
PRODUCT_RELEASE_NAME := acclaim
TARGET_BOOTANIMATION_NAME := horizontal-1024x600.zip

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bn/acclaim/device_acclaim.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := acclaim
PRODUCT_NAME := cm_acclaim
PRODUCT_BRAND := bn
PRODUCT_MODEL := acclaim
PRODUCT_MANUFACTURER := bn
