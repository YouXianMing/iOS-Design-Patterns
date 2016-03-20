//
//  EndChain.m
//  ChainOfResponsibilityPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "EndChain.h"

@interface EndChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation EndChain

- (void)setSuccessor:(id <ChainOfResponsibilityProtocol>)successor {
    
    self.nextSuccessor = successor;
}

- (id <ChainOfResponsibilityProtocol>)successor {
    
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {
    
    NSLog(@"此任务没有责任链可以处理");
}

@end
