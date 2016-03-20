//
//  IteratorProtocol.h
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IteratorProtocol <NSObject>

/**
 *  下一个对象
 *
 *  @return 对象
 */
- (id)next;

/**
 *  是否存在下一个对象
 *
 *  @return 对象
 */
- (BOOL)hasNext;

/**
 *  内容
 *
 *  @return 返回内容
 */
- (id)item;

@end
