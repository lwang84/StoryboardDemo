//
//  iPhoundAppDelegate.m
//  StoryboardDemo
//
//  Created by Lingyong Wang on 10/31/12.
//  Copyright (c) 2012 Lingyong Wang. All rights reserved.
//

#import "iPhoundAppDelegate.h"
#import "Meeting.h"
#import "MeetingsViewController.h"

@implementation iPhoundAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    Meeting *sampleMeeting1 = [[Meeting alloc] init];
    sampleMeeting1.name = @"CS465 Meeting";
    sampleMeeting1.description = @"Team iPhound";
    
    Meeting *sampleMeeting2 = [[Meeting alloc] init];
    sampleMeeting2.name = @"CS440 Meeting";
    sampleMeeting2.description = @"John and Lingyong";
    
    NSMutableArray *meetings = [NSMutableArray arrayWithCapacity:20];
    [meetings addObject:sampleMeeting1];
    [meetings addObject:sampleMeeting2];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
	UINavigationController *navigationController = [[tabBarController viewControllers] objectAtIndex:0];
	MeetingsViewController *meetingsViewController = [[navigationController viewControllers] objectAtIndex:0];
	meetingsViewController.meetings = meetings;
    
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
