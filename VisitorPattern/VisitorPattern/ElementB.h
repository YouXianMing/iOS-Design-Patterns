//
//  ElementB.h
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@interface ElementB : NSObject <ElementProtocol>

/**
 *  元素B特有的操作
 */
- (void)elementBSpecialOperationB;

@end
