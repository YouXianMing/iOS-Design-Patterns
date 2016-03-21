//
//  DeviceCreator.m
//  FactoryPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "DeviceCreator.h"
#import "BaseDevice.h"

@implementation DeviceCreator

+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType {

    if (deviceType == kiPhone) {
        
        return [iPhoneDevice new];
        
    } else if (deviceType == kAndroid) {
    
        return [AndroidDevice new];
        
    } else if (deviceType == kWindows) {
    
        return [WindowsDevice new];
        
    } else {
    
        return [BaseDevice new];
    }
}

@end
