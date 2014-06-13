//
//  AppDelegate.m
//  Huaxin
//
//  Created by pep asm on 07/02/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import "AppDelegate.h"
#import "mainViewController.h"
#import "LeftMenuViewController.h"
#import "MMDrawerController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.viewController = [[mainViewController alloc] initWithNibName:@"mainViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    
    
    UIViewController * leftDrawer = [[LeftMenuViewController alloc] init];
    UIViewController * center = [[mainViewController alloc] init];
    
//    _navigationController = [[UINavigationController alloc] initWithRootViewController:[[mainViewController alloc] init]];
//    UIViewController * center = self.viewController;

    _drawerController =  [[MMDrawerController alloc] initWithCenterViewController:center
                                                         leftDrawerViewController:leftDrawer
                                                        rightDrawerViewController:nil];
    
    [self.drawerController setMaximumLeftDrawerWidth:250.0];
    
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeNone];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self.drawerController setGestureCompletionBlock:^(MMDrawerController *drawerController, UIGestureRecognizer *gesture) {
        
//        [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_CLOSE_MENU object:nil];
    }];
    
    self.drawerController.shouldStretchDrawer = YES; //OJU
    self.drawerController.showsShadow = NO;
    
    
    [self.window makeKeyAndVisible];
    [self performSelector:@selector(showApp) withObject:nil afterDelay:2];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
- (void)showApp
{
    [UIView transitionWithView:self.window
                      duration:0.3
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{ self.window.rootViewController = self.drawerController; }
                    completion:nil];
}

@end
