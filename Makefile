TARGET := iphone:clang:latest:7.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = noAds

noAds_FILES = Tweak.x
noAds_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
