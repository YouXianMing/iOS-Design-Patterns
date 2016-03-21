//
//  ConsoleController.m
//  GameBoy
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController

- (void)excuteCommand:(ConsoleCommand)command {

    [_emulator loadInstructionsForCommand:command];
    [_emulator excuteInstructions];
}

@end
