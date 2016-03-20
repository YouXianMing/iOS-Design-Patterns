//
//  ViewController.m
//  ChainOfResponsibilityPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "HeadChain.h"
#import "PhoneNumChain.h"
#import "EmailChain.h"
#import "UserNameChain.h"
#import "EndChain.h"

@interface ViewController ()

@property (nonatomic, strong) id <ChainOfResponsibilityProtocol> headChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol> phoneNumChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol> emailChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol> userNameChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol> endChain;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
 
    // 创建责任链对象
    self.headChain     = [[HeadChain alloc] init];
    self.phoneNumChain = [[PhoneNumChain alloc] init];
    self.emailChain    = [[EmailChain alloc] init];
    self.userNameChain = [[UserNameChain alloc] init];
    self.endChain      = [[EndChain alloc] init];
    
    // 链接责任链
    self.headChain.successor     = self.phoneNumChain;
    self.phoneNumChain.successor = self.emailChain;
    self.emailChain.successor    = self.userNameChain;
    self.userNameChain.successor = self.endChain;
    
    // 处理事件
    [self.headChain handlerRequest:@"15910514636"];
    [self.headChain handlerRequest:@"705786299@qq.com"];
    [self.headChain handlerRequest:@"705786230"];
    [self.headChain handlerRequest:@"---"];
}

@end
