#
# Copyright (C) 2018 yey59
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
#

# Release name
PRODUCT_RELEASE_NAME := gm8_sprout

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger
    
# Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.msm8937

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8937 \
    libgptutils \
    libz \
    
# The following modules are included in debuggable builds only.
PRODUCT_PACKAGES_DEBUG += \
    bootctl \
    update_engine_client


## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_gm8_sprout
PRODUCT_DEVICE := gm8_sprout
PRODUCT_BRAND := Google
PRODUCT_MODEL := GM 8
PRODUCT_MANUFACTURER := General Mobile
