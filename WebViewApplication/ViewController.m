//
//  ViewController.m
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "AppDelegate.h"
#import "TabBarController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITabBar* tabBar;

@end

@implementation ViewController

@synthesize webView = _webView;

@synthesize pushDesButton;
@synthesize navBar;



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *webURL = [[[NSBundle mainBundle] URLForResource:@"mobileweb" withExtension:@"html"] absoluteString];
    
    NSURL *url = [NSURL URLWithString:webURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    
    //NavigationButton and Bar
    navBar = [[UINavigationBar alloc] init];
    pushDesButton = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStyleDone target:self action:@selector(pushDes:)];
    
    
    self.navigationItem.rightBarButtonItems = @[pushDesButton];
    self.title = @"Main";
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    

}


-(IBAction)pushDes:(id)sender{

    [self performSegueWithIdentifier:@"v1v2" sender:self];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
