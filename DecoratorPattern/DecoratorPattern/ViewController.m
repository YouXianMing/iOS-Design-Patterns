//
//  ViewController.m
//  DecoratorPattern
//
//  Created by YouXianMing on 15/8/1.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

// 装饰器对象
#import "DecoratorGamePlay.h"

// category扩展了对象的行为
#import "GamePlay.h"
#import "GamePlay+MoreCommond.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 装饰器对象
    DecoratorGamePlay *gamePlayDecorator = [DecoratorGamePlay new];
    [gamePlayDecorator cheat];
    
    // category模拟的装饰器
    GamePlay *gamePlay = [GamePlay new];
    [gamePlay cheat];
}

@end
