# AGM
rm -rf hardware/qcom-caf/sm8650/audio/agm
git clone -b 16 https://github.com/Voltage-Peridot/vendor_qcom_opensource_agm-sm8650 hardware/qcom-caf/sm8650/audio/agm --depth=1

# Sepolicy
rm -rf device/qcom/sepolicy_vndr/sm8650
git clone -b 16 https://github.com/Voltage-Peridot/device_qcom_sepolicy_vndr_sm8650 device/qcom/sepolicy_vndr/sm8650 --depth=1

# Xiaomi
rm -rf hardware/xiaomi
git clone https://github.com/Krtonia/hardware_xiaomi_peridot.git -b viper hardware/xiaomi

# Dolby
rm -rf hardware/dolby
git clone https://github.com/F6-test/hardware_dolby.git -b 16-oss hardware/dolby

# Miuicamera
git clone https://github.com/peridot-hyperos-2/vendor-xiaomi-peridot-miuicamera vendor/xiaomi/peridot-miuicamera --depth=1
git clone https://github.com/F6-test/device_xiaomi_peridot-miuicamera.git -b yaap device/xiaomi/peridot-miuicamera --depth=1

# Vibrator-HAL
rm -rf vendor/qcom/opensource/vibrator
git clone https://github.com/poco-f6-peridot/android_vendor_qcom_opensource_vibrator.git -b lineage-22.2 vendor/qcom/opensource/vibrator

# Kernel
git clone https://github.com/F6-test/kernel_peridot_hyperos.git -b aosp-15-qpr2-rebase device/xiaomi/peridot-kernel --depth=1

# Vendor 
git clone https://github.com/Krtonia/vendor_xiaomi_peridot.git -b dolby vendor/xiaomi/peridot --depth=1