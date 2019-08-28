//
//  NativeViewController.m
//  Runner
//
//  Created by Will on 8/28/19.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "NativeViewController.h"
#import "DemoRouter.h"
#import <Flutter/Flutter.h>
#import <flutter_boost/FlutterBoostPlugin.h>

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)openNativePage:(UIButton *)sender {
    [DemoRouter.sharedRouter openPage:@"NativeViewController" params:@{} animated:YES completion:^(BOOL finished) {
    }];
}

- (IBAction)openFlutterPage:(UIButton *)sender {
    [DemoRouter.sharedRouter openPage:@"FlutteriOSPageWidget" params:@{} animated:YES completion:^(BOOL finished) {
        [FlutterBoostPlugin.sharedInstance onResultForKey:@"result_id_FlutteriOSPageWidget" resultData:@{} params:@{}];
    }];
}

@end
