//
//  ElementB.m
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ElementB.h"
#import "VisitorProtocol.h"

@implementation ElementB

- (void)accept:(id <VisitorProtocol>)visitor {
    
    [visitor visitElement:self];
}

- (void)operation {
    
    NSLog(@"Element_B operation start.");
}

- (void)elementBSpecialOperationB {

    NSLog(@"Element_B special operation.");
}

@end
