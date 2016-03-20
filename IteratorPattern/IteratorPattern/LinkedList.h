//
//  LinkedList.h
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

#import "IteratorProtocol.h"
#import "LinkedListIterator.h"

@interface LinkedList : NSObject

/**
 *  头结点
 */
@property (nonatomic, strong, readonly) Node      *headNode;

/**
 *  节点的数目
 */
@property (nonatomic, assign, readonly) NSInteger  numberOfNodes;

/**
 *  添加数据
 *
 *  @param item 数据
 */
- (void)addItem:(id)item;

/**
 *  创建迭代器对象
 *
 *  @return 迭代器对象
 */
- (id <IteratorProtocol>)createIterator;

@end
