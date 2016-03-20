//
//  Node.h
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/**
 *  下一个节点
 */
@property (nonatomic, strong) Node *nextNode;

/**
 *  节点里面的内容
 */
@property (nonatomic, strong) id    item;

/**
 *  初始化节点
 *
 *  @param item 节点携带的内容
 *
 *  @return 节点
 */
- (instancetype)initWithItem:(id)item;

@end
