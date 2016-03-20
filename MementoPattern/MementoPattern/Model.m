//
//  Model.m
//  MementoPattern
//
//  Created by YouXianMing on 15/9/11.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "Model.h"

@implementation Model

- (id)currentState {

    return @{@"name" : self.name == nil ? @""  : self.name,
             @"age"  : self.age  == nil ? @(0) : self.age};
}

- (void)recoverFromState:(id)state {

    NSDictionary *obj = state;
    
    self.name = obj[@"name"];
    self.age  = obj[@"age"];
}

@end
