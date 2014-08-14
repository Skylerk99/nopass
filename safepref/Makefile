ARCHS = armv7 arm64
include theos/makefiles/common.mk

BUNDLE_NAME = safepref
safepref_FILES = safepref.mm
safepref_INSTALL_PATH = /Library/PreferenceBundles
safepref_FRAMEWORKS = UIKit
safepref_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/safepref.plist$(ECHO_END)
