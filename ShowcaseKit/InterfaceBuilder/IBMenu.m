//
//  IBMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 30/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "IBMenu.h"

#import "IBDesignableViewController.h"

NS_ENUM(NSUInteger, IBExamples)
{
    IBExamplesIBDesignable,
    IBExamplesCount
};

@interface IBMenu ()

@property (nonatomic, strong) NSArray *menuItems;

@end

@implementation IBMenu

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.menuItems = @[@"IB Designable"];
    }
    
    return self;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIViewController *vc = nil;

    switch (index) {
        case IBExamplesIBDesignable:
            vc = [IBDesignableViewController new];
            break;
        default:
            break;
    }
    
    return vc;
}

@end
