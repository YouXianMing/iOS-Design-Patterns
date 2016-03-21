//
//  GamePlay.h
//  DecoratorPattern
//
//  Created by YouXianMing on 15/8/1.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamePlay : NSObject

/**
 *  游戏币的数量
 */
@property (nonatomic) NSInteger coin;

/**
 *  上下左右的操作
 */
- (void)up;
- (void)down;
- (void)left;
- (void)right;

/**
 *  选择与开始的操作
 */
- (void)select;
- (void)start;

/**
 *  按钮 A + B 的操作
 */
- (void)commandA;
- (void)commandB;

@end
