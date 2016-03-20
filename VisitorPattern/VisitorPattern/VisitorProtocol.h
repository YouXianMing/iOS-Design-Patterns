//
//  VisitorProtocol.h
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@protocol VisitorProtocol <NSObject>

- (void)visitElement:(id <ElementProtocol>)element;

@end
