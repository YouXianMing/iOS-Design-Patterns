//
//  File.m
//  CompositePattern
//
//  Created by YouXianMing on 15/10/20.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "File.h"

@interface File ()

@property (nonatomic, strong) NSMutableArray <File *> *filesArray;

@end

@implementation File

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
    
        self.filesArray = [NSMutableArray array];
    }
    
    return self;
}

- (void)add:(File *)file {

    [self.filesArray addObject:file];
}

- (NSArray <File *> *)files {

    return self.filesArray;
}

+ (instancetype)createWithFileType:(FileType)type name:(NSString *)name {

    File *file    = [[[self class] alloc] init];
    file.fileType = type;
    file.name     = name;
    
    return file;
}

@end
