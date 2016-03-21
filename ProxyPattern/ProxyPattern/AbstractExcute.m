//
//  AbstractExcute.m
//  AppProxy
//
//  Created by YouXianMing on 15/8/4.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "AbstractExcute.h"

@implementation AbstractExcute

+ (instancetype)shareInstance {

    static AbstractExcute *sharedAbstractExcute = nil;
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAbstractExcute = [[self alloc] init];
    });
    
    return sharedAbstractExcute;
}

- (void)nullExcute:(NSArray *)className {

    if (className.count == 3) {
        
        NSLog(@"%@ 设置了代理,但该代理没有实现 %@ 方法", className[0], className[1]);
        
    } else {
    
        NSLog(@"%@ 没有设置代理,方法 %@ 没有执行", className[0], className[1]);
    }
    
}

@end
