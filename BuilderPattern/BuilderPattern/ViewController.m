//
//  ViewController.m
//  BuilderPattern
//
//  Created by YouXianMing on 15/8/18.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "VehicleAssemblyPlant.h"
#import "SportsCar.h"
#import "SuperBike.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 生成器 + 构造图
    VehicleBuilder *sportCar  = [VehicleAssemblyPlant vehicleAssembly:[SportsCar new]];
    VehicleBuilder *superBike = [VehicleAssemblyPlant vehicleAssembly:[SuperBike new]];
    
    NSLog(@"%@", sportCar.vehicleInfo);
    NSLog(@"%@", superBike.vehicleInfo);
}

@end
