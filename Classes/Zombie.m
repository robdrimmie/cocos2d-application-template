//
//  Zombie.m
//  SimpleGame
//
//  Created by Rob Drimmie on 22/03/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Zombie.h"

@interface Zombie (Private)
@end

#define kMaxX = 320;
#define kMaxY = 480;

@implementation Zombie

+(Zombie*) makeZombie {	
	Zombie *zombie = [super spriteWithFile:@"zombie.png"];
	[zombie setRandomPosition];
	return zombie;
}

-(void)setRandomPosition {
	int x = arc4random() % 480;
	int y = arc4random() % 320;
	
	self.position = cpv(x, y);	
}

-(void) update {
	int x = self.position.x;
	int y = self.position.y;
	
	if( (arc4random() % 3) > 1 ) {
		x++;
	} else {
		x--;
	}
	
	if( (arc4random() % 3) > 1 ) {
		y++;
	} else {
		y--;
	}
	
	if( x > 320 ) x = 320;
	if( x < 0 ) x = 0;
	if( y > 480 ) y = 480;
	if( y < 0 ) y = 0;
	
	self.position = cpv(x, y);
}

-(void) dealloc {
	[super dealloc];
}

@end
