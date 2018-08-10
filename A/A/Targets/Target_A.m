//
//  Target_A.m
//  A_Pod
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
