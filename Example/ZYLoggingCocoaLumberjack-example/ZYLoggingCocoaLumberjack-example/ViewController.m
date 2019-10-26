//
//  ViewController.m
//  ZYLoggingCocoaLumberjack-example
//
//     _______________      __
//    /\______   /  \ \    / /
//    \/___  /  /    \ \  / /
//        / /  /      \ \/ /
//       / /  /        \/ /
//      / /  /______   / /
//     / /__________\ / /
//    /_____________/ \/
//
//  Created by 张一 on 16-12-13.
//  Copyright (c) 2016年 ZY. All rights reserved.
//

#import "ViewController.h"
#import "ZYLogger.h"
#import "ZYLoggingMacros.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    ZYLogDebug(@"lao gong ye xing");
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i=0; i<1000; i++) {
            ZYLogError(@"error");
        }
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        for (int i=0; i<1000; i++) {
            ZYLogDebug(@"debug");
        }
    });
}

@end
