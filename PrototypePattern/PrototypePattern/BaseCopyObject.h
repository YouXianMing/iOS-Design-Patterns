//
//  BaseCopyObject.h
//  PrototypePattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject <NSCopying>

/**
 *  ==> 子类不要重写此方法 <==
 *
 *  复制操作
 *
 *  @param zone
 *
 *  @return 新复制的对象
 */
- (id)copyWithZone:(NSZone *)zone;

/**
 *  ==> 由子类重写 <==
 *
 *  参数赋值操作
 *
 *  @param baseCopyObject 复制操作的对象
 */
- (void)parametersCopyOperationWithBaseCopyObject:(BaseCopyObject *)baseCopyObject;

@end
