//
//  CTDismissedAnimationController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CTDismissedAnimationController.h"

@implementation CTDismissedAnimationController

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *dismissedView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    
    CGFloat duration = [self transitionDuration:transitionContext];

    [UIView animateWithDuration:duration animations:^{
        dismissedView.alpha = 0.0f;
        dismissedView.transform = CGAffineTransformMakeScale(0.3, 0.3);
    } completion:^(BOOL finished) {
        [dismissedView removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

@end
