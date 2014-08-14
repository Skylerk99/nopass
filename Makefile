THEOS_DEVICE_IP = 192.168.2.34
ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = NoPass
NoPass_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += safepref
include $(THEOS_MAKE_PATH)/aggregate.mk
