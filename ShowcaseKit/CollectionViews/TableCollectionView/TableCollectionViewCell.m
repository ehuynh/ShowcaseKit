//
//  TableCollectionViewCell.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 27/11/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "TableCollectionViewCell.h"

@interface TableCollectionViewCell ()

@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation TableCollectionViewCell

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit
{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    self.textLabel = [UILabel new];
    self.textLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:self.textLabel];
    
    NSDictionary *views = @{@"textLabel": self.textLabel};
    NSMutableArray *constraints = [NSMutableArray array];
    [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[textLabel]-|" options:kNilOptions metrics:nil views:views]];
    [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[textLabel]-|" options:kNilOptions metrics:nil views:views]];
    [NSLayoutConstraint activateConstraints:constraints];
}

@end
