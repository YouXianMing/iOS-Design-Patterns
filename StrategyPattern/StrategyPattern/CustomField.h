//
//  CustomField.h
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomField : UITextField

/**
 *  抽象策略
 */
@property (nonatomic, strong, readonly) InputValidator  *inputValidator;

/**
 *  初始化textField
 *
 *  @param frame
 *  @param inputValidator 验证策略
 *
 *  @return 实例对象
 */
- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(InputValidator *)inputValidator;

/**
 *  对应于具体策略的返回值
 *
 *  @return 是否合格
 */
- (BOOL)validate;

@end
