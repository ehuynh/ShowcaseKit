//
//  CustomTransitionsMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CustomTransitionsMenu.h"

NS_ENUM(NSUInteger, MenuItems)
{
    MenuItemsPresentation,
    MenuItemsCount
};

@interface CustomTransitionsMenu ()

@property (nonatomic, strong) NSArray *menuItems;

@end

@implementation CustomTransitionsMenu

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.menuItems = @[@"Presentation"];
    }
    
    return self;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *vc = nil;
    switch (index) {
        case MenuItemsPresentation:
            vc = [storyboard instantiateViewControllerWithIdentifier:@"CTPresenterVC"];
            break;
        default:
            break;
    }
    
    UINavigationController *detailNavController = [[UINavigationController alloc] initWithRootViewController:vc];
    return detailNavController;
}

@end
