# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq ($(PRODUCT_BRAND), OnePlus)
PRODUCT_PACKAGES += \
    OnePlusFrameworksOverlay \
    tri-state-key_daemon \
    TriStateHandler \
    wifi-mac-generator \

BOARD_SEPOLICY_DIRS += \
    device/qcom/common/sepolicy/vendor/common \
endif

ifeq (,$(filter sm8150 sm8250 lahaina , $(TARGET_BOARD_PLATFORM)))
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.oneplus \
    vendor.goodix.hardware.biometrics.fingerprint@2.1.vendor \
    vendor.oneplus.fingerprint.extension@1.0.vendor \
    vendor.oneplus.hardware.display@1.0.vendor \
    vendor.qti.hardware.vibrator.service.oneplus

BOARD_SEPOLICY_DIRS += \
    device/qcom/common/sepolicy/vendor/fod \
    device/qcom/common/sepolicy/vendor/vibrator
endif

ifeq (,$(filter msm8998 sm8150 sm8250 , $(TARGET_BOARD_PLATFORM)))
BOARD_SEPOLICY_DIRS += \
    device/qcom/common/sepolicy/vendor/dashd
endif

ifeq (,$(filter msm8998 sm8250 lahaina , $(TARGET_BOARD_PLATFORM)))
PRODUCT_PACKAGES += \
    audio_amplifier.$(TARGET_BOARD_PLATFORM)
endif