//
//  EmailValidator.h
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "InputValidator.h"

@interface EmailValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input;

@end
