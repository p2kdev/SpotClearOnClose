export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:13.7:13.0
export ARCHS = arm64 arm64e

THEOS_DEVICE_IP = 192.168.1.151

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpotClearOnClose
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Spotlight"
