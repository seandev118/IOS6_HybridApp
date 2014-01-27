//
//  AppDelegate.h
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"

@class ViewController,ViewController2;

@interface AppDelegate  : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate, UITabBarDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) UINavigationController *navController2;
@property (strong, nonatomic) UINavigationController *navController3;


@property (strong, nonatomic) ViewController *vc1;
@property (strong, nonatomic) ViewController2 *vc2;
@property (strong, nonatomic) ViewController3 *vc3;

@end
