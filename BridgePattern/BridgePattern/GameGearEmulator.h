//
//  GameGearEmulator.h
//  GameBoy
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator

- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)excuteInstructions;

@end
