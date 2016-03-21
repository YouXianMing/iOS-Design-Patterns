//
//  VehicleAssemblyPlant.m
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "VehicleAssemblyPlant.h"

@implementation VehicleAssemblyPlant

+ (VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder {

    [vehicleBuilder buildVehicleChassis];
    [vehicleBuilder buildVehicleDoors];
    [vehicleBuilder buildVehicleEngine];
    [vehicleBuilder buildVehicleWheels];
    
    return vehicleBuilder;
}

@end
