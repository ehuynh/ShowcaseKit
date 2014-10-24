//
//  SizeClassesContainerViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 22/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "SizeClassesContainerViewController.h"

#import "SizeClassesViewController.h"

@interface SizeClassesContainerViewController ()

@end

@implementation SizeClassesContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SizeClasses" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"SizeClassExample"];
    [vc willMoveToParentViewController:self];
    [self addChildViewController:vc];
    UIView *view = vc.view;
    [self.view addSubview:view];
    NSDictionary *views = @{@"view": view};
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:kNilOptions metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:kNilOptions metrics:nil views:views]];
    [vc didMoveToParentViewController:self];

    if (self.simulatedTraitCollection) {
        [self setOverrideTraitCollection:self.simulatedTraitCollection forChildViewController:vc];
    }
}

@end
