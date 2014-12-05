//
//  CollectionViewsMenu.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 16/11/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "CollectionViewsMenu.h"

#import "BasicCollectionViewController.h"
#import "TableCollectionViewController.h"

NS_ENUM(NSUInteger, CollectionViewsItems)
{
    CollectionViewsBasic,
    CollectionViewsTable,
    CollectionVIewsCount
};

@implementation CollectionViewsMenu

@synthesize menuItems = _menuItems;

- (NSArray *)menuItems
{
    return @[@"Basic", @"Table View"];
}

- (UIViewController *)viewControllerForMenuItemAtIndex:(NSUInteger)index
{
    UIViewController *vc = nil;
    
    switch (index) {
        case CollectionViewsBasic:
            vc = [BasicCollectionViewController new];
            break;
        case CollectionViewsTable:
            vc = [TableCollectionViewController new];
            break;
        default:
            break;
    }
    
    return vc;
}

@end
