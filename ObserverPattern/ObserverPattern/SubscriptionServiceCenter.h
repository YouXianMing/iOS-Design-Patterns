//
//  SubscriptionServiceCenter.h
//  ObserverPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"

/**
 *  订阅服务中心(实现了系统的通知中心业务逻辑)
 *
 *  = 注意 = 没有考虑发送通知的时候,同步与异步的问题
 *
 */
@interface SubscriptionServiceCenter : NSObject

/**
 *  创建订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  移除订阅号(参与到该订阅号码的所有客户不会再收到订阅信息)
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  将指定客户从指定订阅号上移除掉
 *
 *  @param customer           客户对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeCustomer:(id <SubscriptionServiceCenterProtocol>)customer fromSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  通知签订了订阅号码的对象
 *
 *  @param message            信息对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  客户订阅指定的订阅号
 *
 *  @param customer           客户对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(id <SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

@end
