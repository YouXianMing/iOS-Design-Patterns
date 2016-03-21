//
//  BusinessCardAdapter.m
//  NormalProblem
//
//  Created by YouXianMing on 15/7/25.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BusinessCardAdapter.h"

@implementation BusinessCardAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {

    return nil;
}

- (UIColor *)lineColor {

    return nil;
}

- (NSString *)phoneNumber {

    return nil;
}

@end
