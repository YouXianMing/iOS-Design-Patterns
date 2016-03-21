//
//  SuperBike.m
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "SuperBike.h"

@implementation SuperBike

- (void)buildVehicleChassis {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Chassis"];
}

- (void)buildVehicleEngine {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Engine"];
}

- (void)buildVehicleWheels {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Wheels"];
}

- (void)buildVehicleDoors {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Doors"];
}

@end
