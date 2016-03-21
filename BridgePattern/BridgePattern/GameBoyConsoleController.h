//
//  GameBoyConsoleController.h
//  GameBoy
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ConsoleController.h"

@interface GameBoyConsoleController : ConsoleController

- (void)up;
- (void)down;
- (void)left;
- (void)right;

- (void)select;
- (void)start;

- (void)action1;
- (void)action2;

@end
