//
//  BaseCopyObject.m
//  PrototypePattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone {
    
    BaseCopyObject *copy = [[self class] allocWithZone:zone];
    
    [self parametersCopyOperationWithBaseCopyObject:copy];
    
    return copy;
}

- (void)parametersCopyOperationWithBaseCopyObject:(BaseCopyObject *)baseCopyObject {

    // 由子类重写
}

@end
