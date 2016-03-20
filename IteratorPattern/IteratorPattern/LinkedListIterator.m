//
//  LinkedListIterator.m
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "LinkedListIterator.h"
#import "LinkedList.h"

@interface LinkedListIterator ()

@property (nonatomic, weak) LinkedList *linkedList;
@property (nonatomic, weak) Node       *currentNode;

@end

@implementation LinkedListIterator

- (id)initWithLinkedList:(LinkedList *)linkedList {
    
    if (self = [super init]) {
        
        self.linkedList  = linkedList;
        self.currentNode = linkedList.headNode;
    }
    
    return self;
}

- (id)next {

    id item          = self.currentNode.item;
    self.currentNode = self.currentNode.nextNode;
    
    return item;
}

- (BOOL)hasNext {

    if (self.currentNode == nil) {
        
        return NO;
        
    } else {
    
        return YES;
    }
}

- (id)item {

    return self.currentNode.item;
}

@end
