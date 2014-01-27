//
//  ViewController3.h
//  WebViewApplication
//
//  Created by Sean on 25/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"


@interface ViewController3 : UIViewController <UITabBarControllerDelegate, UITabBarDelegate>


    @property (strong, nonatomic) IBOutlet UIBarButtonItem *backDesButton;
    

@property (strong, nonatomic) IBOutlet UIWebView  *webView3;






@end
