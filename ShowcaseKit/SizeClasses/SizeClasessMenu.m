//
//  SizeClasessMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 20/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "SizeClasessMenu.h"

@implementation SizeClasessMenu

@synthesize menuItems = _menuItems;

- (NSArray *)menuItems
{
    if (!_menuItems) {
        _menuItems = @[@"Default"];
    }
    
    return _menuItems;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SizeClasses" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"SizeClassExample"];
    return vc;
}

@end
