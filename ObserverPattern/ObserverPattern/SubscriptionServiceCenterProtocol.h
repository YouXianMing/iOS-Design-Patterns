//
//  SubscriptionServiceCenterProtocol.h
//  ObserverPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscriptionServiceCenterProtocol <NSObject>

/**
 *  接收到的订阅信息
 *
 *  @param message            订阅信息
 *  @param subscriptionNumber 订阅编号
 */
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end
