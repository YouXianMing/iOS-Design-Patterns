//
//  VehicleBuilder.h
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilderProtocol.h"

@interface VehicleBuilder : NSObject <VehicleBuilderProtocol>

/**
 *  车辆信息
 */
@property (nonatomic, strong) NSMutableDictionary *vehicleInfo;

@end
