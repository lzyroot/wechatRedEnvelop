THEOS_DEVICE_IP = 192.168.31.162
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = wxRedEnvelop
wxRedEnvelop_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
