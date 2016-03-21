//
//  Invoker.h
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

/**
 *  单例
 *
 *  @return 单例
 */
+ (instancetype)sharedInstance;

/**
 *  添加并执行
 *
 *  @param command 命令
 */
- (void)addAndExecute:(id <CommandProtocol>)command;

@end
