//
//  MementoCenterProtocol.h
//  MementoPattern
//
//  Created by YouXianMing on 15/9/11.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterProtocol <NSObject>

@required
/**
 *  生成当前状态对象值
 *
 *  @return 对象值
 */
- (id)currentState;

/**
 *  恢复到指定的状态
 *
 *  @param state 状态
 */
- (void)recoverFromState:(id)state;

@end
