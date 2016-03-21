//
//  VehicleBuilderProtocol.h
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VehicleBuilderProtocol <NSObject>

@required
/**
 *  制造汽车底盘
 */
- (void)buildVehicleChassis;

/**
 *  制造汽车引擎
 */
- (void)buildVehicleEngine;

/**
 *  制造汽车轮子
 */
- (void)buildVehicleWheels;

/**
 *  制造汽车车门
 */
- (void)buildVehicleDoors;

@end
