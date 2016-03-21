//
//  NormalModelAdapter.m
//  AdapterPattern
//
//  Created by YouXianMing on 15/7/25.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "NormalModelAdapter.h"
#import "NormalModel.h"

@implementation NormalModelAdapter

- (NSString *)name {
    
    NormalModel *model = self.data;
    return model.name;
}

- (UIColor *)lineColor {
    
    NormalModel *model = self.data;
    return model.lineColor;
}

- (NSString *)phoneNumber {
    
    NormalModel *model = self.data;
    return model.phoneNumber;
}

@end
