//
//  NormalModel.m
//  StatePattern
//
//  Created by YouXianMing on 15/4/19.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "NormalModel.h"

@implementation NormalModel

- (void)requestState:(StateType *)type {
    
    [type handleData:self];
}

@end
