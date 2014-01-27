//
//  TabBarController.h
//  WebViewApplication
//
//  Created by Sean on 25/01/2014.
//  Copyright (c) 2014 seanliu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarController : UITabBarController <UITabBarControllerDelegate>

@property(nonatomic, assign) id<UITabBarControllerDelegate> delegate;

@end
