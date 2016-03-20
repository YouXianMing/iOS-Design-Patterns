//
//  CoffeeShop.h
//  FlyweightPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoffeeShop : NSObject

/**
 *  接收订单
 *
 *  @param flavor 咖啡味道
 *  @param table  桌子
 */
- (void)takeOrder:(NSString *)flavor table:(int)table;

/**
 *  开始服务
 */
- (void)serve;

@end
