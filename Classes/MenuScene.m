//
//  MenuScene.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//


#import "MenuScene.h"
#import "GameScene.h"

@implementation MenuScene
- (id) init {
	
	self = [super init];
	
	if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"v_screen_template.png"];
        [bg setPosition:ccp(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[MenuLayer node] z:1];
    }
	
    return self;
}

@end

@implementation MenuLayer
- (id) init {
    self = [super init];
	
    if (self != nil) {
        [MenuItemFont setFontSize:20];
        [MenuItemFont setFontName:@"Helvetica"];
        MenuItem *start = [MenuItemFont itemFromString:@"Start Game"
												target:self
											  selector:@selector(startGame:)];
        MenuItem *help = [MenuItemFont itemFromString:@"Help"
											   target:self
											 selector:@selector(help:)];
        Menu *menu = [Menu menuWithItems:start, help, nil];
        [menu alignItemsVertically];
        [self addChild:menu];
    }
	
    return self;
}

-(void)startGame: (id)sender {
    GameScene * gs = [GameScene node];
    [[Director sharedDirector] replaceScene:gs];
}

-(void)help: (id)sender {
    NSLog(@"help");
}
@end
