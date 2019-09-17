//
//  XxerTabBarController.m
//  xxerLib
//
//  Created by Xxer on 2019/9/10.
//  Copyright © 2019 Xxer. All rights reserved.
//

#import "XxerTabBarController.h"

@interface XxerTabBarController ()

@end

@implementation XxerTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    UINavigationController *navi = (UINavigationController *)viewController;
    XXER_DEBUGLOG(@"点击tabbar didSelect的控制器 %@",navi.topViewController);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
