//
//  SecurityMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 2/11/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "SecurityMenu.h"

#import "TouchIDViewController.h"

NS_ENUM(NSUInteger, SecurityExamples)
{
    SecurityExamplesTouchID,
    SecurityExamplesCount
};

@interface SecurityMenu ()

@property (nonatomic, strong) NSArray *menuItems;

@end

@implementation SecurityMenu

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.menuItems = @[@"Touch ID"];
    }
    
    return self;
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIViewController *vc = nil;
    switch (index) {
        case SecurityExamplesTouchID:
            vc = [TouchIDViewController new];
            break;
        default:
            break;
    }
    
    return vc;
}

@end
