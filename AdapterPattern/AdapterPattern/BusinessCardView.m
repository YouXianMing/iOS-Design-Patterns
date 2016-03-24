//
//  BusinessCardView.m
//  Adapter
//
//  Created by YouXianMing on 15/7/25.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BusinessCardView.h"

@interface BusinessCardView ()

@property (nonatomic, strong) UILabel  *nameLabel;
@property (nonatomic, strong) UIView   *lineView;
@property (nonatomic, strong) UILabel  *phoneNumberLabel;

@end

@implementation BusinessCardView

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {

        [self setup];
    }
    
    return self;
}

- (void)setup {

    self.backgroundColor     = [UIColor whiteColor];
    self.layer.borderWidth   = 0.5f;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowOffset  = CGSizeMake(5, 5);
    self.layer.shadowRadius  = 1.f;
    self.layer.shadowColor   = [UIColor grayColor].CGColor;
    
    self.nameLabel      = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 150, 25)];
    self.nameLabel.font = [UIFont fontWithName:@"Avenir-Light" size:20.f];
    [self addSubview:self.nameLabel];
    
    self.lineView                 = [[UIView alloc] initWithFrame:CGRectMake(0, 45, 200, 5)];
    [self addSubview:self.lineView];
    
    self.phoneNumberLabel               = [[UILabel alloc] initWithFrame:CGRectMake(41, 105, 150, 20)];
    self.phoneNumberLabel.textAlignment = NSTextAlignmentRight;
    self.phoneNumberLabel.font          = [UIFont fontWithName:@"AvenirNext-UltraLightItalic" size:16.f];
    [self addSubview:self.phoneNumberLabel];
}

- (void)loadData:(id <BusinessCardAdapterProtocol>)data {

    self.name        = [data name];
    self.lineColor   = [data lineColor];
    self.phoneNumber = [data phoneNumber];
}

#pragma mark - 重写setter,getter方法
@synthesize name        = _name;
@synthesize lineColor   = _lineColor;
@synthesize phoneNumber = _phoneNumber;

- (void)setName:(NSString *)name {
    
    _name           = name;
    _nameLabel.text = name;
}

- (NSString *)name {

    return _name;
}

- (void)setLineColor:(UIColor *)lineColor {

    _lineColor                = lineColor;
    _lineView.backgroundColor = _lineColor;
}

- (UIColor *)lineColor {

    return _lineColor;
}

- (void)setPhoneNumber:(NSString *)phoneNumber {

    _phoneNumber           = phoneNumber;
    _phoneNumberLabel.text = phoneNumber;
}

- (NSString *)phoneNumber {

    return _phoneNumber;
}

@end
