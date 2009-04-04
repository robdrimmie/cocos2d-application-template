//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "___PROJECTNAMEASIDENTIFIER___AppDelegate.h"
#import "FlurryAPI.h"

@interface ___PROJECTNAMEASIDENTIFIER___AppDelegate(Private)
-(void) setupGameState;
@end

@implementation ___PROJECTNAMEASIDENTIFIER___AppDelegate
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window setUserInteractionEnabled:YES];
    [window setMultipleTouchEnabled:YES];
    
	[[Director sharedDirector] setLandscape: NO];
    [[Director sharedDirector] attachInWindow:window];
	
    [window makeKeyAndVisible];
	
    MenuScene * ms = [MenuScene node];
	
	[FlurryAPI startSession:@"[Your Project Flurry Identifier"];
	
	[FlurryAPI logEvent:@"SESSION_STARTED"];
		// or
	NSDictionary *dictionary = 
	[NSDictionary dictionaryWithObjectsAndKeys:
	 @"your parameter value", 
	 @"your parameter name", 
	 nil];		
	[FlurryAPI logEvent:@"EVENT_NAME" withParameters:dictionary];
	 
    [[Director sharedDirector] runWithScene:ms];
}


-(void) setupGameState {
	NSString *testValue = [[NSUserDefaults standardUserDefaults] stringForKey:@"savedGameExists"];
	if (testValue == nil)
	{
		// no default values have been set, create them here based on what's in our Settings bundle info
		//
		// since no default values have been set (i.e. no preferences file created), create it here
		NSDictionary *appDefaults =  [NSDictionary dictionaryWithObjectsAndKeys:
									  @"savedGameExists", NO
									  , nil];
		
		[[NSUserDefaults standardUserDefaults] registerDefaults:appDefaults];
		[[NSUserDefaults standardUserDefaults] synchronize];
	}
}

@end