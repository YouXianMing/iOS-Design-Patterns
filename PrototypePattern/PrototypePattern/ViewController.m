//
//  ViewController.m
//  PrototypePattern
//
//  Created by YouXianMing on 15/7/29.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
 
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    redView.backgroundColor = nil;
    
    Model *model = [Model new];
    
    Person *personOne    = [[Person alloc] init];
    personOne.name       = @"YouXianMing";
    personOne.age        = @"18";
    personOne.datas      = @[model, @"A", @"B"];
    personOne.infomation = @{@"C": model};
    NSLog(@"%@ %@ %@ %@ %@", personOne, personOne.name, personOne.age, personOne.datas, personOne.infomation);
    
    Person *personTwo    = personOne.copy;
    personTwo.name       = @"NoZuoNoDie";
    NSLog(@"%@ %@ %@ %@ %@", personTwo, personTwo.name, personTwo.age, personTwo.datas, personTwo.infomation);
}

@end
