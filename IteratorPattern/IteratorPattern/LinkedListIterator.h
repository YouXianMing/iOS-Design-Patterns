//
//  LinkedListIterator.h
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"
@class LinkedList;

@interface LinkedListIterator : NSObject <IteratorProtocol>

/**
 *  由链表进行初始化
 *
 *  @param linkedList 链表对象
 *
 *  @return 迭代器工具
 */
- (id)initWithLinkedList:(LinkedList *)linkedList;

@end
