//
//  ConsoleController.h
//  GameBoy
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"

@interface ConsoleController : NSObject

/**
 *  抽象模拟器
 */
@property (nonatomic, strong) ConsoleEmulator  *emulator;

/**
 *  执行指令
 *
 *  @param command 指令
 */
- (void)excuteCommand:(ConsoleCommand)command;

@end
