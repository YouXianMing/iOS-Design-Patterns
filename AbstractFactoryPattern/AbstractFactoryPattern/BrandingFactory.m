//
//  BrandingFactory.m
//  AbstractFactoryPattern
//
//  Created by YouXianMing on 15/8/2.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
    
    if ([[self class] isSubclassOfClass:[AcmeBrandingFactory class]]) {
        
        return [AcmeBrandingFactory new];
        
    } else if ([[self class] isSubclassOfClass:[SierraBrandingFactory class]]) {
    
        return [SierraBrandingFactory new];
        
    } else {
    
        return nil;
    }
}

- (UIView *)brandedView {

    return nil;
}

- (UIButton *)brandedMainButton {

    return nil;
}

@end
