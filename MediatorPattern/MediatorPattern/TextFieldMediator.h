//
//  TextFieldMediator.h
//  MediatorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TextFieldMediator : NSObject <UITextFieldDelegate>

@property (nonatomic, weak) UITextField  *textField_1;
@property (nonatomic, weak) UITextField  *textField_2;
@property (nonatomic, weak) UITextField  *textField_3;

@end
