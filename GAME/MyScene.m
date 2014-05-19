//
//  MyScene.m
//  GAME
//
//  Created by apple on 19/05/2014.
//  Copyright (c) 2014 Aceises. All rights reserved.
//

#import "MyScene.h"
#import "Wooo.h"

@implementation MyScene{
    Wooo *thePlayer;
}

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        _screenHeight = self.frame.size.height;
        _screenWidth = self.frame.size.width;

        
        thePlayer = [[Wooo alloc] init];
        thePlayer.position = CGPointMake(_screenWidth/2, 50);
        [self addChild:thePlayer];
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
    
        
        NSLog(@"the screen width is %f andf the screen height is %f", _screenHeight, _screenWidth);
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        NSLog(@"screen touched at %f, %f", location.x,location.y);
        
        if(location.x< _screenWidth/2-40) {
            //left hand side touched
            NSLog(@"left");
            thePlayer.position = CGPointMake( thePlayer.position.x-20, thePlayer.position.y);
        } else if (location.x> _screenWidth/2+40) {
            NSLog(@"right");
            thePlayer.position = CGPointMake( thePlayer.position.x+20, thePlayer.position.y);
            //right hand side touched
        }else{
            NSLog(@"fire");
        }
    
        //SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
       // sprite.position = location;
        
       // SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
       // [sprite runAction:[SKAction repeatActionForever:action]];
        
        //[self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
