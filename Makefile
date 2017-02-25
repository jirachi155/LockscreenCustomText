# ARCHS = x86_64
# TARGET = simulator:clang
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockscreenCustomText
//DEBUG=0
//FINALPACKAGE=1
LockscreenCustomText_FILES = Tweak.xm
PreferenceLoader_FRAMEWORKS = UIKit SpringBoardUIServices
THEOS_DEVICE_IP = 192.168.1.151


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += lockscreencustomtextpref
include $(THEOS_MAKE_PATH)/aggregate.mk
