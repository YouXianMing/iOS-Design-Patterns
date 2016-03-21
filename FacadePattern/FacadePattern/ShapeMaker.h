//
//  ShapeMaker.h
//  FacadePattern
//
//  Created by YouXianMing on 15/7/28.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

#import "Circle.h"
#import "Rectangle.h"
#import "Square.h"

@interface ShapeMaker : NSObject

+ (void)drawCircleAndRectangle;
+ (void)drawCircleAndSquare;
+ (void)drawAll;

@end
