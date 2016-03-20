//
//  ElementA.h
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@interface ElementA : NSObject <ElementProtocol>

/**
 *  元素A特有的操作
 */
- (void)elementASpecialOperationA;

@end
