//
//  Monopoly.m
//  TemplatePattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "Monopoly.h"

@interface Monopoly ()

@property (nonatomic, assign) int gamePlayerCount;

@end

@implementation Monopoly

- (void)setPlayerCount:(int)count {

    self.gamePlayerCount = count;
}

- (int)playerCount {
    
    return self.gamePlayerCount;
}

- (void)initializeGame {

    NSLog(@"Monopoly initialize");
}

- (void)makePlay {

    NSLog(@"Monopoly makePlay");
}

- (void)endOfGame {

    NSLog(@"Monopoly endOfGame");
}

@end
