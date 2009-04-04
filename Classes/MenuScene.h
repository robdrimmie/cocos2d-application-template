//
//  MenuScene.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface MenuScene : Scene {}
@end

@interface MenuLayer : Layer {}
-(void)startGame: (id)sender;
-(void)help: (id)sender;
@end
