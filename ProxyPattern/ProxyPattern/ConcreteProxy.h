//
//  ConcreteProxy.h
//  AppProxy
//
//  Created by YouXianMing on 15/8/4.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "AbstractProxy.h"
#import "MessageProtocol.h"

@interface ConcreteProxy : AbstractProxy <MessageProtocol>

@end
