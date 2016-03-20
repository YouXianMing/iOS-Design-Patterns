//
//  ViewController.m
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "ElementCollection.h"

#import "ElementA.h"
#import "ElementB.h"

#import "Visitor.h"

@interface ViewController ()

@property (nonatomic, strong) ElementCollection  *collection;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 创建集合
    self.collection = [[ElementCollection alloc] init];
    
    // 给集合添加元素
    [self.collection addElement:[[ElementA alloc] init] withKey:@"ElementA"];
    [self.collection addElement:[[ElementB alloc] init] withKey:@"ElementB"];
    
    // 遍历出元素
    for (int i = 0; i < self.collection.allKeys.count; i++) {
        
        NSString            *key     = self.collection.allKeys[i];
        id <ElementProtocol> element = [self.collection elementWithKey:key];
        
        // 接收访问者
        Visitor *visitor = [[Visitor alloc] init];
        [element accept:visitor];
    }
}

@end
