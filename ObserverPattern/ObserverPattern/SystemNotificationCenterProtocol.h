//
//  SystemNotificationCenterProtocol.h
//  ApplicationInfomation
//
//  Created by YouXianMing on 15/8/14.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SystemNotificationCenterProtocol <NSObject>

@required
/**
 *  监听通知信息
 *
 *  @param name   订阅的号码
 *  @param object 通知传递的对象
 */
- (void)listenWithNotificationName:(NSString *)name eventObject:(id)object;

@end
