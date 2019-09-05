include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = YouTubePremiumPrefs

YouTubePremiumPrefs_FILES = YPKRootListController.m
YouTubePremiumPrefs_INSTALL_PATH = /Library/PreferenceBundles
YouTubePremiumPrefs_FRAMEWORKS = UIKit
YouTubePremiumPrefs_PRIVATE_FRAMEWORKS = Preferences
YouTubePremiumPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/YouTubePremiumPrefs.plist$(ECHO_END)
