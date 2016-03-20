//
//  UserNameChain.m
//  ChainOfResponsibilityPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "UserNameChain.h"
#import "RegExCategories.h"

@interface UserNameChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation UserNameChain

- (void)setSuccessor:(id <ChainOfResponsibilityProtocol>)successor {
    
    self.nextSuccessor = successor;
}

- (id <ChainOfResponsibilityProtocol>)successor {
    
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {
    
    NSString *string = request;
    
    if ([string isKindOfClass:[NSString class]] && string.length) {
        
        // 匹配用户名(用户名长度为6-20位之间,大小写字母或者数字均可)
        BOOL isMatch = [string isMatch:RX(@"^[A-Za-z0-9]{6,20}+$")];
        
        if (isMatch) {
            
            NSLog(@"%@ 是用户名", string);
            
        } else {
            
            [self.successor handlerRequest:request];
        }
    }
}

@end
