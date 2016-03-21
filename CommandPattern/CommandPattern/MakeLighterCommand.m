//
//  MakeLighterCommand.m
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "MakeLighterCommand.h"

@interface MakeLighterCommand ()

@property (nonatomic, weak) Receiver *receiver;
@property (nonatomic)       CGFloat   parameter;

@end

@implementation MakeLighterCommand

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter {

    self = [super init];
    
    if (self) {
        
        _receiver  = receiver;
        _parameter = parameter;
    }
    
    return self;
}

- (void)execute {

    [self.receiver makeViewLighter:self.parameter];
}

@end
