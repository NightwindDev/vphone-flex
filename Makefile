TARGET := iphone:clang:latest:16.5
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = vphone-flex

vphone-flex_FILES = Tweak.x
vphone-flex_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
