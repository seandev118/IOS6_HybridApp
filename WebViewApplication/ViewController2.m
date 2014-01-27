//
//  ViewController2.m
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

-(IBAction)pushDes:(id)sender;
-(IBAction)backDes:(id)sender;

    
@end

@implementation ViewController2

@synthesize pushDesButton;
@synthesize backDesButton;
@synthesize webView2 = _webView2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSString *webURL2 = @"http://thememoryofher.tumblr.com"; //tumblr web link
    
    NSURL *url = [NSURL URLWithString:webURL2];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [_webView2 loadRequest:requestObj];
    
    
    self.title = @"Designs";
    
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    
    //forward
    pushDesButton = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStyleDone target:self action:@selector(pushDes:)];
    self.navigationItem.rightBarButtonItems = @[pushDesButton];
    
    //backward
    backDesButton = [[UIBarButtonItem alloc] initWithTitle:@"<" style:UIBarButtonItemStyleDone target:self action:@selector(backDes:)];
    self.navigationItem.leftBarButtonItems = @[backDesButton];
    
    
    
}


-(IBAction)pushDes:(id)sender{
    
       [self performSegueWithIdentifier:@"v2v3" sender:self];
        //self.tabBarController.selectedIndex = 2;
}

-(IBAction)backDes:(id)sender{
    
        [self performSegueWithIdentifier:@"v2v1" sender:self];
        //self.tabBarController.selectedIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
