//
//  SportsCar.m
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "SportsCar.h"

@implementation SportsCar

- (void)buildVehicleChassis {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Chassis"];
}

- (void)buildVehicleEngine {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Engine"];
}

- (void)buildVehicleWheels {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Wheels"];
}

- (void)buildVehicleDoors {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Doors"];
}

@end
