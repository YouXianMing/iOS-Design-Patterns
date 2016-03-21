//
//  GameGearConsoleController.m
//  GameBoy
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "GameGearConsoleController.h"

@implementation GameGearConsoleController

- (void)up {

    [super excuteCommand:kConsoleCommandUp];
}

- (void)down {

    [super excuteCommand:kConsoleCommandDown];
}

- (void)left {

    [super excuteCommand:kConsoleCommandLeft];
}

- (void)right {

    [super excuteCommand:kConsoleCommandRight];
}

- (void)select {

    [super excuteCommand:kConsoleCommandSelect];
}

- (void)start {

    [super excuteCommand:kConsoleCommandStart];
}

@end
