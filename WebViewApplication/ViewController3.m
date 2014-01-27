//
//  ViewController3.m
//  WebViewApplication
//
//  Created by Sean on 25/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()


-(IBAction)backDes:(id)sender;

@end

@implementation ViewController3


@synthesize webView3 = _webView3;

@synthesize backDesButton;


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
    
    
    NSString *webURL2 = @"http://instagram.com/ghostshirt";
    
    NSURL *url = [NSURL URLWithString:webURL2];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [_webView3 loadRequest:requestObj];
    
    self.title = @"Photos";
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    //backward
    backDesButton = [[UIBarButtonItem alloc] initWithTitle:@"<" style:UIBarButtonItemStyleDone target:self action:@selector(backDes:)];
    self.navigationItem.leftBarButtonItems = @[backDesButton];
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"View Changed");
    
    
}

    
-(IBAction)backDes:(id)sender{
    
    [self performSegueWithIdentifier:@"v3v2" sender:self];
    //self.tabBarController.selectedIndex = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
