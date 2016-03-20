//
//  ElementProtocol.h
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol VisitorProtocol;

@protocol ElementProtocol <NSObject>

/**
 *  接收访问者
 *
 *  @param visitor 访问者对象
 */
- (void)accept:(id <VisitorProtocol>)visitor;

/**
 *  元素公共的操作
 */
- (void)operation;

@end
