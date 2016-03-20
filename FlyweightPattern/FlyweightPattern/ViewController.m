//
//  ViewController.m
//  FlyweightPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "CoffeeShop.h"

@interface ViewController ()

@property (nonatomic, strong) CoffeeShop *coffeeShop;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 创建咖啡厅
    self.coffeeShop = [[CoffeeShop alloc] init];
    
    // 相同类型的数据公用
    [self.coffeeShop takeOrder:@"Cappuccino" table:1];
    [self.coffeeShop takeOrder:@"Frappe"     table:10];
    [self.coffeeShop takeOrder:@"Cappuccino" table:6];
    [self.coffeeShop takeOrder:@"Espresso"   table:9];
    [self.coffeeShop takeOrder:@"Frappe"     table:8];
    
    // 开始服务
    [self.coffeeShop serve];
}

@end
