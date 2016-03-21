//
//  StateType.h
//  StatePattern
//
//  Created by YouXianMing on 15/4/19.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

/* StateType是作为虚类存在的，做了空实现，实现延迟到子类中去执行 */

@interface StateType : NSObject

// 处理数据
- (void)handleData:(id)data;

@end
