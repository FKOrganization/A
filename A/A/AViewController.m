//
//  AViewController.m
//  A_Pod
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "AViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [[button rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"Hello,word !!!"];
        [self.navigationController pushViewController:viewController animated:YES];
    }];
    [self.view addSubview:button];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
