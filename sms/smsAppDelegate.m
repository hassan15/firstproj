//
//  smsAppDelegate.m
//  sms
//
//  Created by Ali Raza on 1/4/13.
//  Copyright (c) 2013 PUCIT. All rights reserved.
//

#import "smsAppDelegate.h"
#import "FirstViewController.h"
#import "SettingsViewController.h"

@implementation smsAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    //CREATE FIRST NAVIGATION VC
    FirstViewController *firstVC = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
    UINavigationController *firstNavVC = [[UINavigationController alloc]initWithRootViewController:firstVC];
        
    //CREAT AND ADD FIRST VC AS A ROOT VC OF FIRST NAV VC
    
    
    
    //CREATE SETTINGS NAV VC
    //CREATE AND ADD SETTINGSVC AS A ROOT VC OF SETTINGS NAV VC
    SettingsViewController *settingsVC = [[SettingsViewController alloc]initWithNibName:@"SettingsViewController" bundle:nil];
    UINavigationController *settingsNavVC = [[UINavigationController alloc]initWithRootViewController:settingsVC];
    
    
    
    //CREATE TAB BAR VC AND ADD BOTH NAV VC AS VIEW CONTROLLERS LIST IF TABBAR
    UITabBarController *tabbarVC = [[UITabBarController alloc]init];
    tabbarVC.viewControllers = [NSArray arrayWithObjects:firstNavVC,settingsNavVC, nil];

    
    
    self.window.rootViewController = tabbarVC;
    [self.window makeKeyAndVisible];
    
    [firstVC release];
    [firstNavVC release];
    [settingsVC release];
    [settingsNavVC release];
    [tabbarVC release];
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

@end
