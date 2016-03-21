//
//  ViewController.m
//  AppProxy
//
//  Created by YouXianMing on 15/8/4.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "MessageProtocol.h"
#import "ConcreteProxy.h"

@interface ViewController () <MessageProtocol>

@property (nonatomic, strong) ConcreteProxy  *proxy;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.proxy = [[ConcreteProxy alloc] initWithCustomer:self];
    [self.proxy helloWorld];
    [self.proxy goodBye];
}

- (void)helloWorld {
    
    NSLog(@"helloWorld");
}

@end
