//
//  MakeDarkerCommand.m
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "MakeDarkerCommand.h"

@interface MakeDarkerCommand ()

@property (nonatomic, weak) Receiver *receiver;
@property (nonatomic)       CGFloat   parameter;

@end

@implementation MakeDarkerCommand

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter {
    
    self = [super init];
    
    if (self) {
        
        _receiver  = receiver;
        _parameter = parameter;
    }
    
    return self;
}

- (void)execute {
    
    [self.receiver makeViewDarker:self.parameter];
}

@end
