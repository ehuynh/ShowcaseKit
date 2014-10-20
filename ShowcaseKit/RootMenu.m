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
#import "SizeClasessMenu.h"

NS_ENUM(NSUInteger, ShowcaseExamples)
{
    ShowcaseExamplesCT,
    ShowcaseExamplesSizeClasses,
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
        self.menuItems = @[@"Custom Transitions", @"Size Classes"];
    }
    
    return self;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    MenuViewController *vc = [MenuViewController new];
    id<Menu> menu = nil;
    switch (index) {
        case ShowcaseExamplesCT:
            menu = [CustomTransitionsMenu new];
            break;
        case ShowcaseExamplesSizeClasses:
            menu = [SizeClasessMenu new];
        default:
            break;
    }
    
    vc.menu = menu;
    
    return vc;
}

@end
