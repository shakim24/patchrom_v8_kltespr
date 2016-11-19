#
# Makefile for KLTESPR
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := miui_$(PORT_PRODUCT)_$(BUILD_NUMBER)_6.0.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/6.0/kltespr

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 	BaiduNetworkLocation \
				VoiceAssist \
				GameCenter \
				GameCenterSDKService \
				SuperMarket \
				O2O \
				Weather \
				WeatherProvider

local-miui-removed-priv-apps :=

local-miui-modified-apps :=	Mms \
				Phone \
				TeleService

local-modified-priv-apps :=	

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# Config for files to include from original zip
include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := out/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/build.prop $(ZIP_DIR)/system/build.prop
# replace kernel
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/installd $(ZIP_DIR)/system/bin/installd
	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin
	mkdir -p $(ZIP_DIR)/system/etc/firmware/wcd9320/
	mkdir -p $(ZIP_DIR)/system/vendor/firmware/
