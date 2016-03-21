//
//  Person.h
//  PrototypePattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BaseCopyObject.h"

@interface Person : BaseCopyObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *age;

@property (nonatomic, strong) NSArray      *datas;
@property (nonatomic, strong) NSDictionary *infomation;

@end
