//
//  ViewController.m
//  TemplatePattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "Monopoly.h"
#import "Chess.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // chess game
    id <GameProtocol> chess = [[Chess alloc] init];
    chess.playerCount       = 2;
    [chess initializeGame];
    [chess makePlay];
    [chess endOfGame];
    
    // monopoly game
    id <GameProtocol> monopoly = [[Monopoly alloc] init];
    monopoly.playerCount       = 4;
    [monopoly initializeGame];
    [monopoly makePlay];
    [monopoly endOfGame];
}

@end
