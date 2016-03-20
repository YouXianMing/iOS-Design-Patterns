//
//  ViewController.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/8/6.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "SubSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
    NSLog(@"%@", [Singleton sharedInstance]);
//    NSLog(@"%@", [Singleton new]);
//    NSLog(@"%@", [SubSingleton sharedInstance]);
}

@end
