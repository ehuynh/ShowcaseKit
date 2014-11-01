//
//  IBLiveRenderingSubview.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 30/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "IBLiveRenderingSubview.h"

@interface IBLiveRenderingSubview ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation IBLiveRenderingSubview

/**
 Live Rendering calls this initialiser
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit
{
    self.label = [UILabel new];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    self.label.backgroundColor = [UIColor redColor];
    [self addSubview:self.label];
    NSDictionary *views = @{@"label": self.label};
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[label]-|" options:kNilOptions metrics:nil views:views]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f]];
    self.label.text = @"Some Text";
}

- (void)setTextColor:(UIColor *)textColor
{
    self.label.textColor = textColor;
}

@end
