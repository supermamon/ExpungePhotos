ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = Packages

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
include theos/makefiles/common.mk

TWEAK_NAME = ExpungePhotos
ExpungePhotos_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
