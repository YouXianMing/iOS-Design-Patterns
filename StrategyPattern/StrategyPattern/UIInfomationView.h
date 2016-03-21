//
//  UIInfomationView.h
//  Alert
//
//  Created by YouXianMing on 15/6/23.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^ClickAtIndexBlock)(NSInteger buttonIndex);

@interface UIInfomationView : NSObject 

/**
 *  弹出AlertView对话框
 *
 *  @param title             标题
 *  @param message           信息
 *  @param cancelButtonTitle 取消按钮
 *  @param otherButtons      其他按钮
 *  @param clickAtIndex      获取点击信息的block(进入block中的对象请用weak修饰,否则会导致被block持有)
 *
 *  @return AlertView对象
 */
+ (UIAlertView *)showAlertViewWithTitle:(NSString *)title
                                message:(NSString *)message
                      cancelButtonTitle:(NSString *)cancelButtonTitle
                      otherButtonTitles:(NSArray *)otherButtons
                           clickAtIndex:(ClickAtIndexBlock)clickAtIndex;


/**
 *  弹出ActionSheet对话框
 *
 *  @param view              要显示的view
 *  @param title             标题
 *  @param cancelButtonTitle 取消按钮
 *  @param destructiveButton destructive按钮
 *  @param otherButtons      其他按钮
 *  @param clickAtIndex      获取点击信息的block(进入block中的对象请用weak修饰,否则会导致被block持有)
 *
 *  @return ActionSheet对象
 */
+ (UIActionSheet *)showActionSheetInView:(UIView *)view
                               WithTitle:(NSString *)title
                       cancelButtonTitle:(NSString *)cancelButtonTitle
                  destructiveButtonTitle:(NSString *)destructiveButton
                       otherButtonTitles:(NSArray *)otherButtons
                            clickAtIndex:(ClickAtIndexBlock)clickAtIndex;


@end
