//
//  Node.m
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "Node.h"

@implementation Node

- (instancetype)initWithItem:(id)item {

    self = [super init];
    
    if (self) {
        
        self.item = item;
    }
    
    return self;
}

@end
