# Copyright (C) 2017 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_COPY_FILES += \
    vendor/leeco/zl1/proprietary/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
    vendor/leeco/zl1/proprietary/bin/adsprpcd:system/bin/adsprpcd \
    vendor/leeco/zl1/proprietary/bin/btnvtool:system/bin/btnvtool \
    vendor/leeco/zl1/proprietary/bin/cnss-daemon:system/bin/cnss-daemon \
    vendor/leeco/zl1/proprietary/bin/cnss_diag:system/bin/cnss_diag \
    vendor/leeco/zl1/proprietary/bin/energy-awareness:system/bin/energy-awareness \
    vendor/leeco/zl1/proprietary/bin/gx_fpd:system/bin/gx_fpd \
    vendor/leeco/zl1/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/leeco/zl1/proprietary/bin/ipacm-diag:system/bin/ipacm-diag \
    vendor/leeco/zl1/proprietary/bin/irsc_util:system/bin/irsc_util \
    vendor/leeco/zl1/proprietary/bin/mbn_daemon:system/bin/mbn_daemon \
    vendor/leeco/zl1/proprietary/bin/mbn_daemon_test:system/bin/mbn_daemon_test \
    vendor/leeco/zl1/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    vendor/leeco/zl1/proprietary/bin/pm-proxy:system/bin/pm-proxy \
    vendor/leeco/zl1/proprietary/bin/pm-service:system/bin/pm-service \
    vendor/leeco/zl1/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/leeco/zl1/proprietary/bin/qseecomd:system/bin/qseecomd \
    vendor/leeco/zl1/proprietary/bin/radish:system/bin/radish \
    vendor/leeco/zl1/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/leeco/zl1/proprietary/bin/sensors.qcom:system/bin/sensors.qcom \
    vendor/leeco/zl1/proprietary/bin/ssr_diag:system/bin/ssr_diag \
    vendor/leeco/zl1/proprietary/bin/ssr_setup:system/bin/ssr_setup \
    vendor/leeco/zl1/proprietary/bin/tftp_server:system/bin/tftp_server \
    vendor/leeco/zl1/proprietary/bin/time_daemon:system/bin/time_daemon \
    vendor/leeco/zl1/proprietary/bin/wcnss_filter:system/bin/wcnss_filter \
    vendor/leeco/zl1/proprietary/bin/yep_qmi_server:system/bin/yep_qmi_server \
    vendor/leeco/zl1/proprietary/etc/camera/imx298_chromatix.xml:system/etc/camera/imx298_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/imx298_ofilm_ak_chromatix.xml:system/etc/camera/imx298_ofilm_ak_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/imx298_ofilm_chromatix.xml:system/etc/camera/imx298_ofilm_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/imx298_truly_ak_chromatix.xml:system/etc/camera/imx298_truly_ak_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/msm8996_camera.xml:system/etc/camera/msm8996_camera.xml \
    vendor/leeco/zl1/proprietary/etc/camera/ov8865_chromatix.xml:system/etc/camera/ov8865_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/ov8865_ofilm_chromatix.xml:system/etc/camera/ov8865_ofilm_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/ov8865_ofilm_plus_chromatix.xml:system/etc/camera/ov8865_ofilm_plus_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/camera/ov8865_sunny_chromatix.xml:system/etc/camera/ov8865_sunny_chromatix.xml \
    vendor/leeco/zl1/proprietary/etc/firmware/nfc_test.bin:system/etc/firmware/nfc_test.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/nvm_tlv.bin:system/etc/firmware/nvm_tlv.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/nvm_tlv_1.3.bin:system/etc/firmware/nvm_tlv_1.3.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/nvm_tlv_2.1.bin:system/etc/firmware/nvm_tlv_2.1.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/nvm_tlv_3.0.bin:system/etc/firmware/nvm_tlv_3.0.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/nvm_tlv_3.2.bin:system/etc/firmware/nvm_tlv_3.2.bin \
    vendor/leeco/zl1/proprietary/etc/firmware/rampatch_tlv.img:system/etc/firmware/rampatch_tlv.img \
    vendor/leeco/zl1/proprietary/etc/firmware/rampatch_tlv_1.3.tlv:system/etc/firmware/rampatch_tlv_1.3.tlv \
    vendor/leeco/zl1/proprietary/etc/firmware/rampatch_tlv_2.1.tlv:system/etc/firmware/rampatch_tlv_2.1.tlv \
    vendor/leeco/zl1/proprietary/etc/firmware/rampatch_tlv_3.0.tlv:system/etc/firmware/rampatch_tlv_3.0.tlv \
    vendor/leeco/zl1/proprietary/etc/firmware/rampatch_tlv_3.2.tlv:system/etc/firmware/rampatch_tlv_3.2.tlv \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b00:system/etc/firmware/widevine.b00 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b01:system/etc/firmware/widevine.b01 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b02:system/etc/firmware/widevine.b02 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b03:system/etc/firmware/widevine.b03 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b04:system/etc/firmware/widevine.b04 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b05:system/etc/firmware/widevine.b05 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.b06:system/etc/firmware/widevine.b06 \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.mbn:system/etc/firmware/widevine.mbn \
    vendor/leeco/zl1/proprietary/etc/firmware/widevine.mdt:system/etc/firmware/widevine.mdt \
    vendor/leeco/zl1/proprietary/etc/qdcm_calib_data_mdss_dsi_ft8716_1080p_video.xml:system/etc/qdcm_calib_data_mdss_dsi_ft8716_1080p_video.xml \
    vendor/leeco/zl1/proprietary/etc/qdcm_calib_data_mdss_dsi_s6d6fa1_1080p_video.xml:system/etc/qdcm_calib_data_mdss_dsi_s6d6fa1_1080p_video.xml \
    vendor/leeco/zl1/proprietary/etc/sensors/hals.conf:system/etc/sensors/hals.conf \
    vendor/leeco/zl1/proprietary/etc/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    vendor/leeco/zl1/proprietary/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    vendor/leeco/zl1/proprietary/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so \
    vendor/leeco/zl1/proprietary/vendor/lib/libsensor_test.so:system/vendor/lib/libsensor_test.so \
    vendor/leeco/zl1/proprietary/vendor/lib/sensors.oem.so:system/vendor/lib/sensors.oem.so \
    vendor/leeco/zl1/proprietary/vendor/lib/sensors.ssc.so:system/vendor/lib/sensors.ssc.so \
    vendor/leeco/zl1/proprietary/vendor/lib64/sensors.hal.tof.so:system/vendor/lib64/sensors.hal.tof.so \
    vendor/leeco/zl1/proprietary/vendor/lib64/sensors.oem.so:system/vendor/lib64/sensors.oem.so \
    vendor/leeco/zl1/proprietary/vendor/lib64/sensors.ssc.so:system/vendor/lib64/sensors.ssc.so
