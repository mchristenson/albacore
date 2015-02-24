//
//  AppDelegate.h
//  albacore
//
//  Created by Mark Christenson on 2/19/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpotViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *nav;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) SpotViewController *homePageController;
@property (strong, nonatomic) SpotViewController *spotPageController;


@end

