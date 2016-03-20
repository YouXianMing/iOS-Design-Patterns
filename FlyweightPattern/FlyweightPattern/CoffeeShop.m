//
//  CoffeeShop.m
//  FlyweightPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "CoffeeShop.h"
#import "CoffeeFlavor.h"
#import "Menu.h"

@interface CoffeeShop ()

@property (nonatomic, strong) NSMutableDictionary <NSNumber *, CoffeeFlavor *>  *orders;
@property (nonatomic, strong) Menu *menu;

@end

@implementation CoffeeShop

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
    
        self.orders = [NSMutableDictionary dictionary];
        self.menu   = [[Menu alloc] init];
    }
    
    return self;
}

- (void)takeOrder:(NSString *)flavor table:(int)table {
    
    [self.orders setObject:[self.menu lookupWithFlavor:flavor]
                    forKey:@(table)];
}

- (void)serve {

    NSArray *allKeys = self.orders.allKeys;
    
    for (id key in allKeys) {
        
        NSLog(@"[%@] Serving %@ to table %@", [self.orders objectForKey:key], [self.orders objectForKey:key].flavor, key);
    }
}

@end
