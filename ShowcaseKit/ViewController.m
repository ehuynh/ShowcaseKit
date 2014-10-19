//
//  ViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 4/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "ViewController.h"

#import "RootMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.menu = [RootMenu new];
}

@end
