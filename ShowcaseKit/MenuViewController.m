//
//  MenuViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "MenuViewController.h"

#import "MenuDelegate.h"

@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MenuViewController

- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)presentMenu:(UIViewController *)menuViewController
{
    [self.menuNavController pushViewController:menuViewController animated:YES];
}

- (void)presentDetailViewController:(UIViewController *)viewController
{
    [self.splitViewController showDetailViewController:viewController sender:self];
}

#pragma mark - MenuNavController

- (UINavigationController *)menuNavController
{
    return (UINavigationController *)self.splitViewController.viewControllers.firstObject;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menu.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString* text = self.menu.menuItems[indexPath.row];
    
    cell.textLabel.text = text;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = [self.menu viewControllerForMenuItemAtIndex:indexPath.row];
    
    if ([vc isKindOfClass:[MenuViewController class]]) {
        [self presentMenu:vc];
    }
    else {
        [self presentDetailViewController:vc];
    }
}
@end
