//
//  DeviceCreator.h
//  FactoryPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeviceProtocol.h"
#import "iPhoneDevice.h"
#import "AndroidDevice.h"
#import "WindowsDevice.h"

typedef enum : NSUInteger {
    
    kAndroid,
    kiPhone,
    kWindows,
    
} DeviceType;

@interface DeviceCreator : NSObject

/**
 *  根据标签创建手机
 *
 *  @param deviceType 手机标签
 *
 *  @return 对应的手机
 */
+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType;

@end
