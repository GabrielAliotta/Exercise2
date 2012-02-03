//
//  Exercise2AppDelegate.h
//  Exercise2
//
//  Created by Gabriel Aliotta on 2/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Exercise2ViewController;

@interface Exercise2AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Exercise2ViewController *viewController;

@end
