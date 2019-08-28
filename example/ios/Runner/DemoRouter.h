//
//  DemoRouter.h
//  Runner
//
//  Created by Jidong Chen on 2018/10/22.
//  Copyright © 2018年 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <flutter_boost/FLBPlatform.h>

NS_ASSUME_NONNULL_BEGIN

// FLBPlatform 协议：可以打开Flutter页面
@interface DemoRouter : NSObject<FLBPlatform>

// 通过原生的UINavigationController来管理导航栈
@property (nonatomic, strong) UINavigationController *navigationController;

//单例
+ (DemoRouter *)sharedRouter;

@end

NS_ASSUME_NONNULL_END
