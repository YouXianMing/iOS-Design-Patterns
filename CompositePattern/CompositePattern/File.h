//
//  File.h
//  CompositePattern
//
//  Created by YouXianMing on 15/10/20.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    
    kFolder, // 文件夹
    kFile,   // 文件
    
} FileType;

@interface File : NSObject

#pragma mark - 基本属性
/**
 *  文件类型
 */
@property (nonatomic)         FileType   fileType;

/**
 *  文件夹或者文件的名字
 */
@property (nonatomic, strong) NSString  *name;

/**
 *  添加文件
 *
 *  @param file 文件
 */
- (void)add:(File *)file;

/**
 *  所有文件
 *
 *  @return 文件的文件夹
 */
- (NSArray <File *> *)files;

#pragma mark - 便利构造器
/**
 *  返回创建出来的文件夹或者文件
 *
 *  @param type 文件类型
 *  @param name 文件名字
 *
 *  @return 创建出来的实例对象
 */
+ (instancetype)createWithFileType:(FileType)type name:(NSString *)name;

@end
