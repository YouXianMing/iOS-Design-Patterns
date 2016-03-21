//
//  ShapeMaker.m
//  FacadePattern
//
//  Created by YouXianMing on 15/7/28.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ShapeMaker.h"

@implementation ShapeMaker

+ (void)drawCircleAndRectangle {

    Shape *circle    = [Circle new];
    Shape *rectangle = [Rectangle new];
    
    [circle draw];
    [rectangle draw];
    NSLog(@"\n");
}

+ (void)drawCircleAndSquare {

    Shape *circle    = [Circle new];
    Shape *square    = [Square new];
    
    [circle draw];
    [square draw];
    NSLog(@"\n");
}

+ (void)drawAll {

    Shape *circle    = [Circle new];
    Shape *rectangle = [Rectangle new];
    Shape *square    = [Square new];
    
    [circle draw];
    [rectangle draw];
    [square draw];
    NSLog(@"\n");
}

@end
