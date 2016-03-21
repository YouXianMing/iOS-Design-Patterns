//
//  DeviceProtocol.h
//  FactoryPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeviceProtocol <NSObject>

/**
 *  打电话
 */
- (void)phoneCall;

/**
 *  系统信息
 *
 *  @return 返回系统描述信息
 */
- (NSString *)systemInfomation;

@end
