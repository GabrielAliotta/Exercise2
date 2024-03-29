//
//  Exercise2AppDelegate.m
//  Exercise2
//
//  Created by Gabriel Aliotta on 2/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Exercise2AppDelegate.h"

#import "Exercise2ViewController.h"

@implementation Exercise2AppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    // USE NSString //
    NSString *myString = [[NSString alloc] initWithString:@"MyString1"];
    NSLog(@"%@", myString);
    NSString *myString2 = [myString uppercaseString];
    NSLog(@"%@",myString2);
    
    
    // USE NSMutableArray
    NSMutableArray *list = [[NSMutableArray alloc] init];
    [list addObject:@"OneString"];
    [list addObject:myString];
    [list addObject:myString2];
    [list addObject:[myString lowercaseString]];
    for(NSString *s in list)
        NSLog(@"String:%@", s);
    
    // USE NSMutableDictionary //
    NSMutableDictionary *dictionaryString = [[NSMutableDictionary alloc] init];
    [dictionaryString setObject:@"OneString" forKey:@"String1"];
    [dictionaryString setObject:myString forKey:@"string2"];
    [dictionaryString setObject:myString2 forKey:@"string3"];
    [dictionaryString setObject:[myString lowercaseString] forKey:@"string4"];
        NSLog(@"StringDic:%@", dictionaryString);
    

    [myString release];
    [list release];
    [dictionaryString release];
     
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
