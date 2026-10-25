//
// Copyright (c) 2026 Nightwind
//

#import <UIKit/UIKit.h>
#import <rootless.h>
#import <dlfcn.h>

@interface FLEXManager : NSObject
+ (instancetype)sharedManager;
- (void)showExplorer;
@end

%hook UIApplication

- (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
	%orig;
	
	for (UIPress *const press in presses) {
		UIKey *const key = [press key];
		if ((key.keyCode == UIKeyboardHIDUsageKeyboardF) && (key.modifierFlags & UIKeyModifierAlternate)) {
			[[%c(FLEXManager) sharedManager] showExplorer];
			return;
		}
	}
}

%end

%ctor {
	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:nil usingBlock:^(NSNotification *notification) {
		if (dlopen(ROOT_PATH("/Library/MobileSubstrate/DynamicLibraries/libFLEX.dylib"), RTLD_NOW)) {
			%init;
		}
	}];
}