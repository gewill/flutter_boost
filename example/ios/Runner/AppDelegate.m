//
//  AppDelegate.m
//  sdfsdf
//
//  Created by Jidong Chen on 2018/10/18.
//  Copyright © 2018年 Jidong Chen. All rights reserved.
//

#import "AppDelegate.h"
#import "NativeViewController.h"
#import "DemoRouter.h"
#import <flutter_boost/FlutterBoost.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    [self.window makeKeyAndVisible];

    NativeViewController *vc = [[NativeViewController alloc] initWithNibName:@"NativeViewController" bundle:[NSBundle mainBundle]];
    UINavigationController *rvc = [[UINavigationController alloc] initWithRootViewController:vc];

    // 配置Native的Router
    DemoRouter *router = [DemoRouter sharedRouter];
    router.navigationController = rvc;

    self.window.rootViewController = rvc;

    // 配置Flutter Boost
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:router
                                                        onStart:^(FlutterViewController *fvc) {
    }];

    return YES;
}

@end
