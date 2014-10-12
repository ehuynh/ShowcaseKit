//
//  ViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 4/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "ViewController.h"

NS_ENUM(NSUInteger, ShowcaseExamples)
{
    ShowcaseExamplesCT,
    ShowcaseExamplesCount
};

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ShowcaseExamplesCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString* text = nil;
    
    switch(indexPath.row)
    {
        case ShowcaseExamplesCT:
            text = @"Custom Transitions";
            break;
        default:
            break;
    }
    
    cell.textLabel.text = text;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = nil;
    switch (indexPath.row) {
        case ShowcaseExamplesCT:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"CTPresenterVC"];
            break;
        default:
            break;
    }
    
    UINavigationController *detailNavController = [[UINavigationController alloc] initWithRootViewController:vc];
    [self.splitViewController showDetailViewController:detailNavController sender:self];
}

@end
