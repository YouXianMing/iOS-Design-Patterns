//
//  VehicleBuilder.m
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "VehicleBuilder.h"

@implementation VehicleBuilder

- (instancetype)init {
    
    if (self = [super init]) {
    
        self.vehicleInfo = [NSMutableDictionary dictionary];
    }
    
    return self;
}

- (void)buildVehicleChassis {

    [NSException raise:NSInternalInconsistencyException
                format:@"对不起,您不能直接调用 '%@ %d' 中的方法 '%@',您需要通过继承其子类,在子类中重载该方法",
     [NSString stringWithUTF8String:__FILE__].lastPathComponent, __LINE__, NSStringFromSelector(_cmd)];
}

- (void)buildVehicleEngine {

    [NSException raise:NSInternalInconsistencyException
                format:@"对不起,您不能直接调用 '%@ %d' 中的方法 '%@',您需要通过继承其子类,在子类中重载该方法",
     [NSString stringWithUTF8String:__FILE__].lastPathComponent, __LINE__, NSStringFromSelector(_cmd)];
}

- (void)buildVehicleWheels {

    [NSException raise:NSInternalInconsistencyException
                format:@"对不起,您不能直接调用 '%@ %d' 中的方法 '%@',您需要通过继承其子类,在子类中重载该方法",
     [NSString stringWithUTF8String:__FILE__].lastPathComponent, __LINE__, NSStringFromSelector(_cmd)];
}

- (void)buildVehicleDoors {

    [NSException raise:NSInternalInconsistencyException
                format:@"对不起,您不能直接调用 '%@ %d' 中的方法 '%@',您需要通过继承其子类,在子类中重载该方法",
     [NSString stringWithUTF8String:__FILE__].lastPathComponent, __LINE__, NSStringFromSelector(_cmd)];
}

@end
