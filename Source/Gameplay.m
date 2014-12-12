//
//  Gameplay.m
//  Blocka
//
//  Created by Mark on 11/15/14.
//  Copyright (c) 2014 MEB. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay
{
    // physics
    CCPhysicsNode *_physicsNode;
    
    // levels
    CCNode *_levelNode;
}

- (void)onEnter
{
    [super onEnter];
    
    // Create string in order to load current/next levels
    NSString *levelString = [NSString stringWithFormat:@"Levels/Level1"];
    
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
    
    //Load the level
    CCScene *level = [CCBReader loadAsScene:levelString];
    [_levelNode addChild: level];
}

- (void)onExit
{
    // deallocate
    [super onExit];
}

@end
