//
//  TextFieldMediator.m
//  MediatorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "TextFieldMediator.h"

@implementation TextFieldMediator

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if ([textField isEqual:self.textField_1]) {
        
        NSString *currentNum  = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField_2.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue * 7];
        self.textField_3.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue * 14];
        
    } else if ([textField isEqual:self.textField_2]) {
        
        NSString *currentNum  = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField_1.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue / 7];
        self.textField_3.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue * 2];
        
    } else {
        
        NSString *currentNum  = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField_1.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue / 14];
        self.textField_2.text = [NSString stringWithFormat:@"%.f", currentNum.floatValue / 2];
    }
    
    return YES;
}

- (NSString *)currentStringWithTextField:(UITextField *)textField replacementString:(NSString *)string inRange:(NSRange)range {
    
    NSMutableString *mutableString = [NSMutableString stringWithString:textField.text];
    
    if (string.length) {
        
        [mutableString insertString:string atIndex:range.location];
        
    } else {
        
        [mutableString deleteCharactersInRange:range];
    }
    
    return [NSString stringWithString:mutableString];
}

@end
