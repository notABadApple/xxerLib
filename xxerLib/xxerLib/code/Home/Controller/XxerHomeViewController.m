//
//  XxerHomeViewController.m
//  xxerLib
//
//  Created by Xxer on 2019/9/17.
//  Copyright © 2019 Xxer. All rights reserved.
//

#import "XxerHomeViewController.h"
#import "XxerTableView.h"

@interface XxerHomeViewController ()

@property (nonatomic, strong) XxerTableView *tableView;

@end

@implementation XxerHomeViewController

#pragma mark -
#pragma mark Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
}

#pragma mark -
#pragma mark 懒加载
-(XxerTableView *)tableView {
    if (!_tableView) {
        
        _tableView = [[XxerTableView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, XXER_SCREEN_WIDTH, XXER_SCREEN_HEIGHT) style:UITableViewStylePlain];
        
    }
    return _tableView;
}


@end
