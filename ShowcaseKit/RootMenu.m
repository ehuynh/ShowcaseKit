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
#import "IBMenu.h"
#import "SecurityMenu.h"

NS_ENUM(NSUInteger, ShowcaseExamples)
{
    ShowcaseExamplesCT,
    ShowcaseExamplesSizeClasses,
    ShowcaseExamplesInterfaceBuilder,
    ShowcaseExamplesSecurity,
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
        self.menuItems = @[@"Custom Transitions",
                           @"Size Classes",
                           @"Interface Builder",
                           @"Security"];
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
            break;
        case ShowcaseExamplesInterfaceBuilder:
            menu = [IBMenu new];
            break;
        case ShowcaseExamplesSecurity:
            menu = [SecurityMenu new];
        default:
            break;
    }
    
    vc.menu = menu;
    
    return vc;
}

@end
