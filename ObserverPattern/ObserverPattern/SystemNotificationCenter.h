//
//  SystemNotificationCenter.h
//  ApplicationInfomation
//
//  Created by YouXianMing on 15/8/14.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SystemNotificationCenterProtocol.h"

/**
 *  专门用于监听用的通知中心系统
 */
@interface SystemNotificationCenter : NSObject

/**
 *  注册订阅号
 *
 *  @param name 订阅的号码
 */
+ (void)registerNotificationName:(NSString *)name;

/**
 *  移除订阅号
 *
 *  @param name 订阅的号码
 */
+ (void)removeNotificationName:(NSString *)name;

/**
 *  添加客户到指定的订阅号
 *
 *  @param customer 客户
 *  @param name     订阅的号码
 */
+ (void)addCustomer:(id <SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name;

/**
 *  将客户从指定的订阅号移除
 *
 *  @param customer 客户
 *  @param name     订阅的号码
 */
+ (void)removeCustomer:(id <SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name;

@end
