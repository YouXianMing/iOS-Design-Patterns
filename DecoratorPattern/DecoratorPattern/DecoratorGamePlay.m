//
//  DecoratorGamePlay.m
//  DecoratorPattern
//
//  Created by YouXianMing on 15/8/1.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "DecoratorGamePlay.h"

@interface DecoratorGamePlay ()

@property (nonatomic, strong) GamePlay  *gamePlay;

@end

@implementation DecoratorGamePlay

#pragma mark - 初始化
- (instancetype)init {
    
    if (self = [super init]) {
    
        // 装饰对象包含一个真实对象的引用
        self.gamePlay = [GamePlay new];
    }
    
    return self;
}

#pragma mark - 让真实对象的引用执行对应的方法
- (void)up {

    [_gamePlay up];
}

- (void)down {

    [_gamePlay down];
}

- (void)left {

    [_gamePlay left];
}

- (void)right {

    [_gamePlay right];
}

- (void)select {

    [_gamePlay select];
}

- (void)start {

    [_gamePlay start];
}

- (void)commandA {

    [_gamePlay commandA];
}

- (void)commandB {

    [_gamePlay commandB];
}

#pragma mark - 装饰器新添加的方法
- (void)cheat {

    [_gamePlay up];
    [_gamePlay down];
    [_gamePlay up];
    [_gamePlay down];
    [_gamePlay left];
    [_gamePlay right];
    [_gamePlay left];
    [_gamePlay right];
    [_gamePlay commandA];
    [_gamePlay commandB];
    [_gamePlay commandA];
    [_gamePlay commandB];
}

@synthesize lives = _lives;
- (NSInteger)lives {

    // 相关处理逻辑
    return 10;
}

@end
