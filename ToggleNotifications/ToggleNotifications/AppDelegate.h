//
//  AppDelegate.h
//  ToggleNotifications
//
//  Created by Swapnil on 1/29/15.
//  Copyright (c) 2015 CyberSams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void) registerAppForNotifications;
- (void) unregisterAppForNotifications; 
@end

