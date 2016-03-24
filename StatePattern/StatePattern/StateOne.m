//
//  StateOne.m
//  StatePattern
//
//  Created by YouXianMing on 15/4/19.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "StateOne.h"
#import "NormalModel.h"

@implementation StateOne

- (void)handleData:(id)data {
    
    NormalModel *model = data;
    model.workType     = iOS_developer;
    model.age          = @(28);
    model.name         = @"YouXianMing";
}

@end
