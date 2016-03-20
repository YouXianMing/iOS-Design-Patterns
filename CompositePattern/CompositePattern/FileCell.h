//
//  FileCell.h
//  CompositePattern
//
//  Created by YouXianMing on 15/10/20.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileCell : UITableViewCell

@property (nonatomic, weak) id                data;
@property (nonatomic, weak) NSIndexPath      *indexPath;
@property (nonatomic, weak) UITableView      *tableView;
@property (nonatomic, weak) UIViewController *controller;

- (void)loadContent;

@end
