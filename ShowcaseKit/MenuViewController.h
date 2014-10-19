//
//  MenuViewController.h
//  ShowcaseKit
//
//  Created by Edward Huynh on 12/10/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Menu.h"

@interface MenuViewController : UITableViewController

@property (nonatomic, strong) id<Menu> menu;

@end
