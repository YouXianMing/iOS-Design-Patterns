//
//  BrandingFactory.h
//  AbstractFactoryPattern
//
//  Created by YouXianMing on 15/8/2.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BrandingFactory : NSObject

/**
 *  抽象工厂方法
 *
 *  @return 具体的工厂
 */
+ (BrandingFactory *)factory;

/**
 *  该工厂生产的brandedView(由具体工厂构造)
 *
 *  @return 生产好的brandedView
 */
- (UIView *)brandedView;

/**
 *  该工厂生产的brandedMainButton(由具体工厂构造)
 *
 *  @return 生产好的brandedMainButton
 */
- (UIButton *)brandedMainButton;

@end
