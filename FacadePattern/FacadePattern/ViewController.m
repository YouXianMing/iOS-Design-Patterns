//
//  ViewController.m
//  FacadePattern
//
//  Created by YouXianMing on 15/7/28.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "ShapeMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    [ShapeMaker drawCircleAndRectangle];
    [ShapeMaker drawCircleAndSquare];
    [ShapeMaker drawAll];
}

@end
