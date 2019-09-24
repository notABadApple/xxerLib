//
//  XxerTabBarController.m
//  xxerLib
//
//  Created by Xxer on 2019/9/10.
//  Copyright © 2019 Xxer. All rights reserved.
//

#import "XxerTabBarController.h"

@interface XxerTabBarController ()<UITabBarControllerDelegate>

@end

@implementation XxerTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupChildViewControllers];
    self.delegate = self;
}

- (void)setupChildViewControllers {
    
    self.homeVc = [[XxerHomeViewController alloc] init];

    XxerHomeViewController *homeVc1 = [[XxerHomeViewController alloc] init];
    XxerHomeViewController *homeVc2 = [[XxerHomeViewController alloc] init];
    XxerHomeViewController *homeVc3 = [[XxerHomeViewController alloc] init];
    XxerHomeViewController *homeVc4 = [[XxerHomeViewController alloc] init];
    
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:self.homeVc];
    homeNav.tabBarItem.title = @"首页";
    
    UINavigationController *homeNav1 = [[UINavigationController alloc] initWithRootViewController:homeVc1];
    homeNav1.tabBarItem.title = @"首页";
    
    UINavigationController *homeNav2 = [[UINavigationController alloc] initWithRootViewController:homeVc2];
    homeNav2.tabBarItem.title = @"首页";
    
    UINavigationController *homeNav3 = [[UINavigationController alloc] initWithRootViewController:homeVc3];
    homeNav3.tabBarItem.title = @"首页";
    
    UINavigationController *homeNav4 = [[UINavigationController alloc] initWithRootViewController:homeVc4];
    homeNav4.tabBarItem.title = @"首页";
    
    self.viewControllers = @[homeNav,homeNav1,homeNav2,homeNav3,homeNav4];
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
