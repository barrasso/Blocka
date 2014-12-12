//
//  MainScene.m
//  Blocka
//
//  Created by Mark on 11/15/14.
//  Copyright (c) 2014 MEB. All rights reserved.
//
#import "MainScene.h"

@implementation MainScene

- (void)playNow
{
    CCScene *levelScene = (CCScene *)[CCBReader loadAsScene:@"LevelSelect"];
    CCTransition *sceneTransition = [CCTransition transitionFadeWithDuration:1.0];
    [[CCDirector sharedDirector] replaceScene:levelScene withTransition:sceneTransition];
}

@end
