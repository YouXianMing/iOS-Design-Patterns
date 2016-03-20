//
//  ElementA.m
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ElementA.h"
#import "VisitorProtocol.h"

@implementation ElementA

- (void)accept:(id <VisitorProtocol>)visitor {

    [visitor visitElement:self];
}

- (void)operation {

    NSLog(@"Element_A operation start.");
}

- (void)elementASpecialOperationA {

    NSLog(@"Element_A special operation.");
}

@end
