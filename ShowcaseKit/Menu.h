//
//  Menu.h
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MenuDelegate.h"

@protocol Menu <NSObject>

@property (nonatomic, readonly) NSArray *menuItems;

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index;

@end
