//
//  ViewController.m
//  StrategyPattern
//
//  Created by YouXianMing on 15/7/26.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+inits.h"
#import "UIView+SetRect.h"
#import "UIInfomationView.h"

#import "CustomField.h"
#import "EmailValidator.h"
#import "PhoneNumberValidator.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) CustomField  *emailField;
@property (nonatomic, strong) CustomField  *phoneNumberField;

@property (nonatomic, strong) UIButton     *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
 
    [self initCustomFields];
    [self initButton];
}

#pragma mark - 初始化文本输入框
- (void)initCustomFields {

    
    self.emailField          = [[CustomField alloc] initWithFrame:CGRectMake(30, 80, Width - 60, 30)
                                               withInputValidator:[EmailValidator new]];
    self.emailField.delegate = self;
    [self.view addSubview:self.emailField];
    
    
    self.phoneNumberField          = [[CustomField alloc] initWithFrame:CGRectMake(30, 80 + 40, Width - 60, 30)
                                                     withInputValidator:[PhoneNumberValidator new]];
    self.phoneNumberField.delegate = self;
    [self.view addSubview:self.phoneNumberField];
}

#pragma mark - 初始化按钮以及按钮事件
- (void)initButton {

    self.button = [UIButton createButtonWithFrame:CGRectMake(30, 30, 90, 30)
                                       buttonType:BUTTON_NORMAL
                                            title:@"Back"
                                              tag:0
                                           target:self
                                           action:@selector(buttonsEvent:)];
    [self.view addSubview:self.button];
}

- (void)buttonsEvent:(UIButton *)button {

    [self.view endEditing:YES];
}

#pragma mark - 文本框代理
- (void)textFieldDidEndEditing:(UITextField *)textField {

    CustomField *customField = (CustomField *)textField;
    
    if ([customField validate] == NO) {
        
        // 提示信息
        [UIInfomationView showAlertViewWithTitle:nil
                                         message:customField.inputValidator.errorMessage
                               cancelButtonTitle:@"确定"
                               otherButtonTitles:nil
                                    clickAtIndex:^(NSInteger buttonIndex) {
                                        
                                    }];
    }
}

@end
