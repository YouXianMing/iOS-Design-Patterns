//
//  VehicleAssemblyPlant.h
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilder.h"

/**
 *  车辆装配工厂
 */
@interface VehicleAssemblyPlant : NSObject

/**
 *  组装车辆
 *
 *  @param vehicleBuilder 组装方案
 *
 *  @return 组装好的车辆
 */
+ (VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder;

@end
