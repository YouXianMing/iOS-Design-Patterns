//
//  ElementCollection.m
//  VisitorPattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ElementCollection.h"
#import "ElementProtocol.h"

@interface ElementCollection ()

@property (nonatomic, strong) NSMutableDictionary  *elementsDictionary;

@end

@implementation ElementCollection

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
    
        self.elementsDictionary = [NSMutableDictionary dictionary];
    }
    
    return self;
}

- (void)addElement:(id <ElementProtocol>)element withKey:(NSString *)key {

    NSParameterAssert(element);
    NSParameterAssert(key);
    
    [self.elementsDictionary setObject:element forKey:key];
}

- (NSArray *)allKeys {

    return self.elementsDictionary.allKeys;
}

- (id <ElementProtocol>)elementWithKey:(NSString *)key {

    NSParameterAssert(key);
    
    return [self.elementsDictionary objectForKey:key];
}

@end
