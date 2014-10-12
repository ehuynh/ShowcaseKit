//
//  CTPresenterAnimationController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 4/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CTPresenterAnimationController.h"

@implementation CTPresenterAnimationController

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1.0f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    UIView *containerView = [transitionContext containerView];
    toView.translatesAutoresizingMaskIntoConstraints = NO;
    [containerView addSubview:toView];
    
    NSDictionary *views = @{@"toView": toView};
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[toView]-|" options:kNilOptions metrics:nil views:views]];
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[toView]-|" options:kNilOptions metrics:nil views:views]];
    

    toView.alpha = 0.0;
    toView.transform = CGAffineTransformMakeScale(0.3, 0.3);
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:duration / 2.0 animations:^{
        toView.alpha = 1.0;
    }];
    
    CGFloat damping = 0.55;
    
    [UIView animateWithDuration:duration delay:0.0 usingSpringWithDamping:damping initialSpringVelocity:1.0 / damping options:0 animations:^{
        toView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
