//
//  Menu.h
//  FlyweightPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoffeeFlavor.h"

@interface Menu : NSObject

/**
 *  获取指定味道的咖啡（如果没有则创建）
 *
 *  @param flavor 味道
 *
 *  @return 指定味道的咖啡
 */
- (CoffeeFlavor *)lookupWithFlavor:(NSString *)flavor;

@end
