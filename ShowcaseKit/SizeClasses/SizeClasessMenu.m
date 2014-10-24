//
//  SizeClasessMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 20/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "SizeClasessMenu.h"

#import "SizeClassesContainerViewController.h"

NS_ENUM(NSUInteger, SizeClassesMenuItems)
{
    SizeClassesMenuItemDefault,
    SIzeClassesMenuItemRegularWidthCompactHeight
};

@implementation SizeClasessMenu

@synthesize menuItems = _menuItems;

- (NSArray *)menuItems
{
    if (!_menuItems) {
        _menuItems = @[@"Default", @"rWcH"];
    }
    
    return _menuItems;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    SizeClassesContainerViewController *vc = [[SizeClassesContainerViewController alloc] init];
    
    switch (index) {
        case SIzeClassesMenuItemRegularWidthCompactHeight:
            vc.simulatedTraitCollection = [self simulatedTraitCollectionWithHorizontalClass:UIUserInterfaceSizeClassRegular verticalClass:UIUserInterfaceSizeClassCompact];
            break;
            
        default:
            break;
    }
    return vc;
}

- (UITraitCollection *)simulatedTraitCollectionWithHorizontalClass:(UIUserInterfaceSizeClass)horizontalClass verticalClass:(UIUserInterfaceSizeClass)verticalClass
{
    UITraitCollection *hTraitCollection = [UITraitCollection traitCollectionWithHorizontalSizeClass:horizontalClass];
    UITraitCollection *vTraitCollection = [UITraitCollection traitCollectionWithVerticalSizeClass:verticalClass];
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithTraitsFromCollections:@[hTraitCollection, vTraitCollection]];

    return traitCollection;
}

@end
