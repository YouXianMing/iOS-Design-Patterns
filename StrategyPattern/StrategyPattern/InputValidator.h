//
//  InputValidator.h
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define  EMPTY_INPUT  @"输入为空"

@interface InputValidator : NSObject

/**
 *  抽象策略
 *
 *  @param input 当前输入textField
 *
 *  @return 输入验证是否合法
 */
- (BOOL)validateInput:(UITextField *)input;

/**
 *  错误信息
 */
@property (nonatomic, strong) NSString *errorMessage;

@end
