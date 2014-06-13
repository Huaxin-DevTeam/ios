//
//  AppDelegate.h
//  Huaxin
//
//  Created by pep asm on 07/02/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import <UIKit/UIKit.h>
@class mainViewController;
@class MMDrawerController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) mainViewController *viewController;
@property (strong, nonatomic) MMDrawerController *drawerController;

@property (strong, nonatomic) UINavigationController *navigationController;
@end
