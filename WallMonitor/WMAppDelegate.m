//
//  WMAppDelegate.m
//  WallMonitor
//
//  Created by Joachim Bengtsson on 2012-12-08.
//  Copyright (c) 2012 Joachim Bengtsson. All rights reserved.
//

#import "WMAppDelegate.h"
#import "WMMainViewController.h"

@implementation WMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [WMMainViewController new];
    
    [self.window makeKeyAndVisible];
    return YES;
}
@end
