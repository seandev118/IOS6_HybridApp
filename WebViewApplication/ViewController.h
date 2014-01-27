//
//  ViewController.h
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"


@interface ViewController : UIViewController <UITabBarDelegate>


@property (strong, nonatomic) IBOutlet UIWebView  *webView;


@property (strong, nonatomic) IBOutlet UINavigationBar *navBar;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *pushDesButton;


-(IBAction)pushDes:(id)sender;

@end
