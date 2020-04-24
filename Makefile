include $(THEOS)/makefiles/common.mk

export ARCHS=arm64

TWEAK_NAME = Always3DMaps
Always3DMaps_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall Maps"
