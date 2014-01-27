//
//  ViewController2.h
//  WebViewApplication
//
//  Created by Sean on 23/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView  *webView2;
@property (strong, nonatomic) IBOutletCollection(UITabBarItem) NSArray *BarButton2;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *pushDesButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *backDesButton;

@end
