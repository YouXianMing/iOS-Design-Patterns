//
//  ViewController.m
//  MediatorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "TextFieldMediator.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UITextField  *textField_1;
@property (nonatomic, strong) UITextField  *textField_2;
@property (nonatomic, strong) UITextField  *textField_3;

@property (nonatomic, strong) TextFieldMediator *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 初始化控件
    self.textField_1 = [self createTextFieldWithFrame:CGRectMake(10, 30 + 40 * 0, 250, 30)];
    self.textField_2 = [self createTextFieldWithFrame:CGRectMake(10, 30 + 40 * 1, 250, 30)];
    self.textField_3 = [self createTextFieldWithFrame:CGRectMake(10, 30 + 40 * 2, 250, 30)];
    [self.view addSubview:self.textField_1];
    [self.view addSubview:self.textField_2];
    [self.view addSubview:self.textField_3];
    
    // 初始化中介者
    self.mediator = [[TextFieldMediator alloc] init];
    self.mediator.textField_1 = self.textField_1;
    self.mediator.textField_2 = self.textField_2;
    self.mediator.textField_3 = self.textField_3;
    
    // 将代理设置成中介者
    self.textField_1.delegate = self.mediator;
    self.textField_2.delegate = self.mediator;
    self.textField_3.delegate = self.mediator;
}

- (UITextField *)createTextFieldWithFrame:(CGRect)frame {
    
    UITextField *tmpField      = [[UITextField alloc] initWithFrame:frame];
    tmpField.layer.borderWidth = 0.5f;
    tmpField.keyboardType      = UIKeyboardTypeNumberPad;
    
    return tmpField;
}

@end
