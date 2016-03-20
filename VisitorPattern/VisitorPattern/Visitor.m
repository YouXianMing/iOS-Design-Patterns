//
//  Visitor.m
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "Visitor.h"

@interface Visitor ()

@property (nonatomic, weak) ElementA *elementA;
@property (nonatomic, weak) ElementB *elementB;

@end

@implementation Visitor

- (void)visitElementA:(ElementA *)elementA {

    self.elementA = elementA;
    
    [elementA operation];
    [elementA elementASpecialOperationA];
}

- (void)visitElementB:(ElementB *)elementB {

    self.elementB = elementB;
    
    [elementB operation];
    [elementB elementBSpecialOperationB];
}

- (void)visitElement:(id <ElementProtocol>)element {

    if ([element isMemberOfClass:[ElementA class]]) {
        
        [self visitElementA:element];
        
    } else if ([element isMemberOfClass:[ElementB class]]) {
    
        [self visitElementB:element];
    }
}

@end
