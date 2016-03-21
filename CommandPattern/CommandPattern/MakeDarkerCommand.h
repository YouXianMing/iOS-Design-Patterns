//
//  MakeDarkerCommand.h
//  CommandPattern
//
//  Created by YouXianMing on 15/10/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

@interface MakeDarkerCommand : NSObject <CommandProtocol>

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter;

@end
