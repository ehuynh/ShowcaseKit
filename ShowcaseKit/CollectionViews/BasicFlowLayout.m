//
//  BasicFlowLayout.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 17/11/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "BasicFlowLayout.h"

@implementation BasicFlowLayout

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.itemSize = CGSizeMake(100, 80);
        self.sectionInset = UIEdgeInsetsMake(20, 10, 20, 10);
        self.headerReferenceSize = CGSizeMake(300, 200);
        self.footerReferenceSize = CGSizeMake(200, 100);
    }
    
    return self;
}

@end
