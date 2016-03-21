//
//  GamePlay+MoreCommond.h
//  DecoratorPattern
//
//  Created by YouXianMing on 15/8/1.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "GamePlay.h"
#import <objc/runtime.h>

@interface GamePlay (MoreCommond)

/**
 *  剩余几条命
 */
@property (nonatomic, readonly) NSInteger  lives;

/**
 *  作弊 (上下上下左右左右ABAB)
 */
- (void)cheat;

@end
