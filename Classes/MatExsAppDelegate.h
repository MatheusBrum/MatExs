//
//  MatExsAppDelegate.h
//  MatExs
//
//  Created by Matheus Brum on 17/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MatExsViewController;

@interface MatExsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MatExsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MatExsViewController *viewController;

@end

