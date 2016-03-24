//
//  MementoCenter.m
//  MementoPattern
//
//  Created by YouXianMing on 15/9/11.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MementoCenter

+ (void)saveMementoObject:(id <MementoCenterProtocol>)mementoObject withKey:(NSString *)key {

    NSParameterAssert(mementoObject);
    NSParameterAssert(key);
    
    NSData *data = [self makeDataWithValue:[mementoObject currentState]];
    
    if (data) {
    
        [self storeValue:data with:[self MD5HashWithString:key]];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key {

    NSParameterAssert(key);

    NSData *data = [self valueWithKey:[self MD5HashWithString:key]];
    
    if (data) {
        
        return [self makeObjectWithData:data];
        
    } else {
    
        return nil;
    }
}

#pragma mark - md5
+ (NSString *)MD5HashWithString:(NSString *)string {
    
    CC_MD5_CTX md5;
    
    CC_MD5_Init(&md5);
    CC_MD5_Update(&md5, [string UTF8String], (CC_LONG) [string length]);
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5_Final(digest, &md5);
    
    NSString *s = [NSString stringWithFormat: @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                   digest[0],  digest[1],
                   digest[2],  digest[3],
                   digest[4],  digest[5],
                   digest[6],  digest[7],
                   digest[8],  digest[9],
                   digest[10], digest[11],
                   digest[12], digest[13],
                   digest[14], digest[15]];
    
    return s;
}

#pragma mark - 本地持久化
+ (void)storeValue:(id)value with:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
}

+ (id)valueWithKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

#pragma mark - 使用FastCode来处理对象
+ (NSData *)makeDataWithValue:(id)value {
    
    return [FastCoder dataWithRootObject:value];
}

+ (id)makeObjectWithData:(NSData *)data {
    
    return [FastCoder objectWithData:data];
}

@end
