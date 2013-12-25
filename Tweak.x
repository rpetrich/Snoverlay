#import <UIKit/UIKit.h>

#import "VENSnowOverlayView/VENSnowOverlayView/VENSnowOverlayView.h"

%ctor {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *block) {
		CGRect frame = [UIScreen mainScreen].bounds;
		UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
		window.windowLevel = 100000.0f;
		VENSnowOverlayView *overlayView = [[VENSnowOverlayView alloc] initWithFrame:frame];
		[window addSubview:overlayView];
		window.userInteractionEnabled = NO;
		window.hidden = NO;
		[overlayView beginSnowAnimation];
	}];
	[pool drain];
}
