$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/c8812/c8812-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8812/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
	device/huawei/c8812/vold.fstab:system/etc/vold.fstab \
	device/huawei/c8812/init.huawei.rc:root/init.huawei.rc \
	device/huawei/c8812/init.huawei.usb.rc:root/init.huawei.usb.rc \
	device/huawei/c8812/init.qcom.sh:root/init.qcom.sh \
	device/huawei/c8812/ueventd.huawei.rc:root/ueventd.huawei.rc
	
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_c8812
PRODUCT_DEVICE := c8812
