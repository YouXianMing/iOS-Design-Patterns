//
//  ViewController.m
//  BridgePattern
//
//  Created by YouXianMing on 15/7/27.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

#import "GameBoyEmulator.h"
#import "GameBoyConsoleController.h"

#import "GameGearEmulator.h"
#import "GameGearConsoleController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    GameBoyConsoleController *gameBoyConsoleController = [GameBoyConsoleController new];
    gameBoyConsoleController.emulator                  = [GameBoyEmulator new];
    [gameBoyConsoleController up];
    
    GameGearConsoleController *gameGearConsoleController = [GameGearConsoleController new];
    gameGearConsoleController.emulator                   = [GameGearEmulator new];
    [gameGearConsoleController up];
}


@end
