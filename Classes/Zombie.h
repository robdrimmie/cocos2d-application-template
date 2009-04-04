//
//  Zombie.h
//  SimpleGame
//
//  Created by Rob Drimmie on 22/03/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


@interface SimpleSprite : Sprite {

}

+(SimpleSprite*) makeSimpleSprite;

-(void)setRandomPosition;
-(void) update;

@end
