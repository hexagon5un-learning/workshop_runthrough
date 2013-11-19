NAME=Bungle

all: 
	cordova build
	adb uninstall org.elliotwilliams.$(NAME)
	adb install platforms/android/bin/$(NAME)-debug.apk

setup:
	cordova create $(NAME) org.elliotwilliams.$(NAME) $(NAME)
	cp Makefile $(NAME)
	cd $(NAME) && cordova platform add android

