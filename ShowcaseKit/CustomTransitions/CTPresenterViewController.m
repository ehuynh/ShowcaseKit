//
//  CTPresenterViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 4/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CTPresenterViewController.h"

#import "CTPresentedViewController.h"
#import "CTPresenterAnimationController.h"
#import "CTDismissedAnimationController.h"

@interface CTPresenterViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation CTPresenterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self commonInit];
}

- (void)commonInit
{
    self.title = @"Presenter";
}

#pragma mark - Target Action

- (IBAction)didTapShow:(id)sender
{
    CTPresentedViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CTPresentedVC"];
    viewController.modalPresentationStyle = UIModalPresentationCustom;
    viewController.transitioningDelegate = self;
    
    [self presentViewController:viewController animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source
{
    return [[CTPresenterAnimationController alloc] init];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [[CTDismissedAnimationController alloc] init];
}

@end

