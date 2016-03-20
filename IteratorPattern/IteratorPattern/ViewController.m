//
//  ViewController.m
//  IteratorPattern
//
//  Created by YouXianMing on 15/10/26.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

#import "LinkedList.h"
#import "LinkedListIterator.h"

@interface ViewController ()

@property (nonatomic, strong) LinkedList  *linkedList;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 创建链表结构
    self.linkedList = [[LinkedList alloc] init];
    
    // 添加链表元素
    [self.linkedList addItem:@"1"];
    [self.linkedList addItem:@"2"];
    [self.linkedList addItem:@"3"];
    [self.linkedList addItem:@"4"];
    [self.linkedList addItem:@"5"];
    
    // 创建迭代器
    id <IteratorProtocol> iterator = [self.linkedList createIterator];
    
    // 进行元素迭代
    while ([iterator hasNext]) {
        
        NSLog(@"%@", iterator.item);
        [iterator next];
    }
}

@end
