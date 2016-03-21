//
//  PhoneNumberValidator.h
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "InputValidator.h"

@interface PhoneNumberValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input;

@end
