//
//  TabBarController.m
//  WebViewApplication
//
//  Created by Sean on 25/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import "TabBarController.h"

#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface TabBarController ()

@end

@implementation TabBarController
@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.delegate = self;
}

-(void)tabBarController:(UITabBarController*) tabBarController didSelectViewController:(UINavigationController *) navController{
    
    [navController viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
