//
//  Chess.m
//  TemplatePattern
//
//  Created by YouXianMing on 15/10/27.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

#import "Chess.h"

@interface Chess ()

@property (nonatomic, assign) int gamePlayerCount;

@end

@implementation Chess

- (void)setPlayerCount:(int)count {
    
    self.gamePlayerCount = count;
}

- (int)playerCount {
    
    return self.gamePlayerCount;
}

- (void)initializeGame {
    
    NSLog(@"Chess initialize");
}

- (void)makePlay {
    
    NSLog(@"Chess makePlay");
}

- (void)endOfGame {
    
    NSLog(@"Chess endOfGame");
}

@end
