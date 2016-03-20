//
//  HeadChain.m
//  ChainOfResponsibilityPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "HeadChain.h"

@interface HeadChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation HeadChain

- (void)setSuccessor:(id <ChainOfResponsibilityProtocol>)successor {
    
    self.nextSuccessor = successor;
}

- (id <ChainOfResponsibilityProtocol>)successor {
    
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {
    
    [self.successor handlerRequest:request];
}

@end
