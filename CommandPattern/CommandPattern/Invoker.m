//
//  Invoker.m
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) NSMutableArray *commandQueue;

@end

@implementation Invoker

+ (instancetype)sharedInstance {

    static Invoker        *sharedInstanceValue = nil;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        
        sharedInstanceValue = [[Invoker alloc] init];
        sharedInstanceValue.commandQueue = [NSMutableArray array];
    });
    
    return sharedInstanceValue;
}

- (void)addAndExecute:(id <CommandProtocol>)command {

    // 添加并执行
    [self.commandQueue addObject:command];
    [command execute];
}

@end
