//
//  MatExsAppDelegate.m
//  MatExs
//
//  Created by Matheus Brum on 17/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MatExsAppDelegate.h"
#import "MatExsViewController.h"

@implementation MatExsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
