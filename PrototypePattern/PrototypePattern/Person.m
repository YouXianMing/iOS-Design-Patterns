//
//  Person.m
//  PrototypePattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)parametersCopyOperationWithBaseCopyObject:(Person *)baseCopyObject {
    
    baseCopyObject.name  = self.name;
    baseCopyObject.age   = self.age;
    
    // 字典与数组的深层次拷贝
    baseCopyObject.datas      = [[[self.datas class] alloc] initWithArray:self.datas copyItems:YES];
    baseCopyObject.infomation = [[[self.infomation class] alloc] initWithDictionary:self.infomation copyItems:YES];
}

@end
