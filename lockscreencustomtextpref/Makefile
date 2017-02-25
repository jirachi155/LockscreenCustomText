ARCHS = armv7 armv7s arm64
TARGET = iphone::10.1:10.1
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = lockscreencustomtextpref
lockscreencustomtextpref_FILES = LCTRootListController.m
lockscreencustomtextpref_INSTALL_PATH = /Library/PreferenceBundles
lockscreencustomtextpref_FRAMEWORKS = UIKit
lockscreencustomtextpref_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/lockscreencustomtextpref.plist$(ECHO_END)
