//
//  ViewController.m
//  ObserverPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"

#define  SCIENCE  @"SCIENCE"
#define  NEWTON   @"NEWTON"

@interface ViewController () <SubscriptionServiceCenterProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 创建订阅号 - SCIENCE NEWTON
    [SubscriptionServiceCenter createSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter createSubscriptionNumber:NEWTON];
    
    // 客户添加了订阅号 - SCIENCE NEWTON
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:NEWTON];
    
    // 订阅中心给订阅号 - SCIENCE NEWTON 发送订阅信息
    [SubscriptionServiceCenter sendMessage:@"爱因斯坦" toSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter sendMessage:@"小苹果" toSubscriptionNumber:NEWTON];
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {

    if ([subscriptionNumber isEqualToString:NEWTON]) {
        
        NSLog(@"来自于牛顿杂志的信息 - %@", message);
        
    } else if ([subscriptionNumber isEqualToString:SCIENCE]) {
    
        NSLog(@"来自于科学美国人杂志的信息 - %@", message);
    }
}

@end
