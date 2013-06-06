//
//  FFAppDelegate.h
//  moviePlayer
//
//  Created by liu on 6/6/13.
//  Copyright (c) 2013 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFViewController;

@interface FFAppDelegate : UIResponder <UIApplicationDelegate> {

    FFViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;

//@property (strong, nonatomic) FFViewController *viewController;

@end
