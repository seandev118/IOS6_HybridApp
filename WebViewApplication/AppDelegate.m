//
//  AppDelegate.m
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"



@implementation AppDelegate

@synthesize navController;
@synthesize navController2;
@synthesize navController3;

@synthesize vc1;
@synthesize vc2;
@synthesize vc3;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //storyboard
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    
    //viewcontroller
    vc1 = (ViewController  *)[mainStoryboard instantiateViewControllerWithIdentifier:@"View1"];
    vc2 = (ViewController2 *)[mainStoryboard instantiateViewControllerWithIdentifier:@"View2"];
    vc3 = (ViewController3 *)[mainStoryboard instantiateViewControllerWithIdentifier:@"View3"];
    
    navController  = [[UINavigationController alloc] initWithRootViewController:vc1];
    navController2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    navController3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    
    //tabbarcontroller
    self.tabBarController = [[TabBarController alloc] init];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects: navController, navController2, navController3, nil];
    self.window.rootViewController = self.tabBarController;
    
    
   return YES;
}


	
@end
