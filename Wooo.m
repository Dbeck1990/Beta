//
//  Wooo.m
//  GAME
//
//  Created by apple on 19/05/2014.
//  Copyright (c) 2014 Aceises. All rights reserved.
//

#import "Wooo.h"

@implementation Wooo

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _player = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        _player.xScale = 0.15;
        _player.yScale = 0.15;
        [self addChild:_player];
        
        
    }
    return self;
}
@end
