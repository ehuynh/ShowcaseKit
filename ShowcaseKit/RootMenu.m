//
//  RootMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "RootMenu.h"

#import "CustomTransitionsMenu.h"
#import "MenuViewController.h"

NS_ENUM(NSUInteger, ShowcaseExamples)
{
    ShowcaseExamplesCT,
    ShowcaseExamplesCount
};

@interface RootMenu ()

@property (nonatomic, strong) NSArray *menuItems;

@end

@implementation RootMenu

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.menuItems = @[@"Custom Transitions"];
    }
    
    return self;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIViewController *vc = nil;
    
    switch (index) {
        case ShowcaseExamplesCT:
            vc = [self customTransitionsMenu];
            break;
        default:
            break;
    }
    
    return vc;
}

- (UIViewController *)customTransitionsMenu
{
    MenuViewController *menuViewController = [MenuViewController new];
    menuViewController.menu = [CustomTransitionsMenu new];
    
    return menuViewController;
}
@end
