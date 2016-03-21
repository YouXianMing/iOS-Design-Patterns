//
//  GameProtocol.h
//  TemplatePattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GameProtocol <NSObject>

@required

/**
 *  设置玩家个数
 *
 *  @param count 数目
 */
- (void)setPlayerCount:(int)count;

/**
 *  返回玩家数目
 *
 *  @return 玩家数目
 */
- (int)playerCount;

/**
 *  初始化游戏
 */
- (void)initializeGame;

/**
 *  开始游戏
 */
- (void)makePlay;

/**
 *  结束游戏
 */
- (void)endOfGame;

@end
