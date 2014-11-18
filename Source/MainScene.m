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
    CCScene *gameplayScene = (CCScene *)[CCBReader loadAsScene:@"Gameplay"];
    CCTransition *sceneTransition = [CCTransition transitionFadeWithDuration:1.0];
    [[CCDirector sharedDirector] replaceScene:gameplayScene withTransition:sceneTransition];
}

@end
