//
//  CustomField.m
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "CustomField.h"

@interface CustomField ()

/**
 *  抽象策略
 */
@property (nonatomic, strong) InputValidator  *inputValidator;

@end

@implementation CustomField

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(InputValidator *)inputValidator {
    
    if (self = [super initWithFrame:frame]) {
    
        [self setup];
        
        // 持有inputValidator
        self.inputValidator = inputValidator;
    }
    
    return self;
}

- (void)setup {

    UIView *leftView       = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, self.frame.size.height)];
    self.leftView          = leftView;
    self.leftViewMode      = UITextFieldViewModeAlways;
    
    self.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    
    self.layer.borderWidth = 0.5f;
}

- (BOOL)validate {

    return [self.inputValidator validateInput:self];
}

@end
