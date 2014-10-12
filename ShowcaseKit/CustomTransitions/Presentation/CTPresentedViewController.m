//
//  CTPresentedViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 4/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CTPresentedViewController.h"

@interface CTPresentedViewController ()

@end

@implementation CTPresentedViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self commonInit];
}

- (void)commonInit
{
    self.view.backgroundColor = [UIColor redColor];
}

#pragma mark - Target Action

- (IBAction)didTapView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
