//
//  GameScene.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "GameScene.h"
#import "MenuScene.h"

@implementation GameScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"v_screen_template.png"];
		bg.transformAnchor = CGPointZero;
        [self addChild:bg z:0];
        [self addChild:[GameLayer node] z:1];
    }
    return self;
}
@end


@implementation GameLayer

- (id) init {
    self = [super init];
    if (self != nil) {
        isTouchEnabled = YES;
		
		[self schedule:@selector(step:)];
		
	}
		

    return self;
}

- (BOOL)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] replaceScene:ms];
    return kEventHandled;
}


-(void) step: (ccTime) dt {
	// do stuff that happens each tick (drawing usually)
}

@end