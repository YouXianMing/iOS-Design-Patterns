//
//  AbstractProxy.h
//  AppProxy
//
//  Created by YouXianMing on 15/8/4.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractProxy : NSProxy

/**
 *  被代理对象
 */
@property (nonatomic, weak) id  customer;

/**
 *  代理客户
 *
 *  @param customer 实现了某种协议的客户
 *
 *  @return 代理对象
 */
- (instancetype)initWithCustomer:(id)customer;

@end
