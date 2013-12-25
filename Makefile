ARCHS = armv7 arm64

TARGET_IPHONEOS_DEPLOYMENT_VERSION = 5.0

TWEAK_NAME = Snoverlay
Snoverlay_FILES = Tweak.x VENSnowOverlayView/VENSnowOverlayView/VENSnowOverlayView.m
Snoverlay_FRAMEWORKS = UIKit QuartzCore

TWEAK_TARGET_PROCESS = SpringBoard

internal-stage::
	mkdir -p "$(THEOS_STAGING_DIR)/System/Library/CoreServices/SpringBoard.app/"
	cp VENSnowOverlayView/VENSnowOverlayView/Resources/VENSnowflake.png "$(THEOS_STAGING_DIR)/System/Library/CoreServices/SpringBoard.app/"

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk
