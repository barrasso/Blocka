//
//  LevelSelect.m
//  Blocka
//
//  Created by Mark on 11/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelSelect.h"

@implementation LevelSelect

#pragma mark - Lifecycle

- (void)didLoadFromCCB
{
    [self loadCurrentProgress];
}

#pragma mark - Level Selectors

- (void)loadLevel1
{
    CCScene *gameScene = (CCScene *)[CCBReader loadAsScene:@"Gameplay"];
    CCTransition *sceneTransition = [CCTransition transitionFadeWithDuration:1.0];
    [[CCDirector sharedDirector] replaceScene:gameScene withTransition:sceneTransition];
}

#pragma mark - Nav Selectors

- (void)goBack
{
    CCScene *mainScene = (CCScene *)[CCBReader loadAsScene:@"MainScene"];
    CCTransition *sceneTransition = [CCTransition transitionFadeWithDuration:1.0];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:sceneTransition];
}

#pragma mark - Helper Methods

- (void)loadCurrentProgress
{
    // hard coded shit change later //////////////////////////////////////////////////////////
    // initially load unlocked levels
    self.level1Button.enabled = YES;
    self.level2Button.enabled = NO;
    self.level3Button.enabled = NO;
    self.level4Button.enabled = NO;
    self.level5Button.enabled = NO;
    self.level6Button.enabled = NO;
    self.level7Button.enabled = NO;
    self.level8Button.enabled = NO;
    self.level9Button.enabled = NO;
    self.level10Button.enabled = NO;
    self.level11Button.enabled = NO;
    self.level12Button.enabled = NO;
}

@end
