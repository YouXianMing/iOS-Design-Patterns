//
//  DecoratorGamePlay.h
//  DecoratorPattern
//
//  Created by YouXianMing on 15/8/1.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePlay.h"

@interface DecoratorGamePlay : NSObject

@property (nonatomic) NSInteger coin;

- (void)up;
- (void)down;
- (void)left;
- (void)right;
- (void)select;
- (void)start;
- (void)commandA;
- (void)commandB;

#pragma mark - 以下为装饰对象新添加的功能

/**
 *  剩余几条命
 */
@property (nonatomic, readonly) NSInteger  lives;

/**
 *  作弊 (上下上下左右左右ABAB)
 */
- (void)cheat;

@end
