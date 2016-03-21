//
//  AcmeBrandingFactory.m
//  AbstractFactoryPattern
//
//  Created by YouXianMing on 15/8/2.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "AcmeBrandingFactory.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    
    NSLog(@"AcmeBrandedView");
    return nil;
}

- (UIButton *)brandedMainButton {
    
    NSLog(@"AcmeBrandedMainButton");
    return nil;
}

@end
