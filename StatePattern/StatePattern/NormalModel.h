//
//  NormalModel.h
//  StatePattern
//
//  Created by YouXianMing on 15/4/19.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 定义的两种状态 */
#import "StateOne.h"
#import "StateTwo.h"

typedef enum : NSUInteger {
    
    iOS_developer = 0x10,
    Android_developer,
    none,
    
} EWork;

@interface NormalModel : NSObject

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSNumber  *age;
@property (nonatomic)         EWork      workType;

// 请求状态切换
- (void)requestState:(StateType *)type;

@end
