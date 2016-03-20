//
//  ViewController.m
//  MementoPattern
//
//  Created by YouXianMing on 15/9/11.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "MementoCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 初始化model
    Model *model = [[Model alloc] init];
    
    // 获取状态
    id state = [MementoCenter mementoObjectWithKey:@"Model"];
    
    // 恢复状态
    [model recoverFromState:state];
    
    // 打印
    NSLog(@"name:%@  age:%@", model.name, model.age);
    
    // 赋值
    model.name   = @"YouXianMing";
    model.age    = @27;
    
    // 存储状态
    [MementoCenter saveMementoObject:model withKey:@"Model"];
}

@end
