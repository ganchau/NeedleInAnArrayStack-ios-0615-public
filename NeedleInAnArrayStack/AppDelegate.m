//
//  AppDelegate.m
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 1/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (UIWindow *)window {
    if (!_window) {
        self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
        [self.window makeKeyAndVisible];
    }
    return _window;
}


@end
