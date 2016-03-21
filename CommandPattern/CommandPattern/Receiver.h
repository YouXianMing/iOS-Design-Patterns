//
//  Receiver.h
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Receiver : NSObject {

    CGFloat _hue;
    CGFloat _saturation;
    CGFloat _brightness;
    CGFloat _alpha;
}

@property (nonatomic, weak) UIView  *colorView;

/**
 *  让接收指令的view颜色变淡
 *
 *  @param quantity 数量
 */
- (void)makeViewLighter:(CGFloat)quantity;

/**
 *  让接收指令的view颜色变身
 *
 *  @param quantity 数量
 */
- (void)makeViewDarker:(CGFloat)quantity;

@end
