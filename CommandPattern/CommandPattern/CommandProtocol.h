//
//  CommandProtocol.h
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

@required
/**
 *  执行指令
 */
- (void)execute;

@end
