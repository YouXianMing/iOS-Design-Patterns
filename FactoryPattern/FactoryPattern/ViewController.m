//
//  ViewController.m
//  FactoryPattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "DeviceCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    BaseDevice *iPhone = [DeviceCreator deviceCreatorWithDeviceType:kiPhone];
    [iPhone phoneCall];
    NSLog(@"%@", [iPhone systemInfomation]);
    
    BaseDevice *android = [DeviceCreator deviceCreatorWithDeviceType:kAndroid];
    [android phoneCall];
    NSLog(@"%@", [android systemInfomation]);
    
    BaseDevice *windows = [DeviceCreator deviceCreatorWithDeviceType:kWindows];
    [windows phoneCall];
    NSLog(@"%@", [windows systemInfomation]);
}

@end
