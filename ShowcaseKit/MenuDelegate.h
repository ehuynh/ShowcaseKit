//
//  MenuDelegate.h
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

@import UIKit;

@protocol MenuDelegate <NSObject>

- (void)presentMenu:(UIViewController *)menuViewController;
- (void)presentDetailViewController:(UIViewController *)viewController;

@end
