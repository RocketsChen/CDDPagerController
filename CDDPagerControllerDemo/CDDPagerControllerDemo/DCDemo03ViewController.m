//
//  DCDemo03ViewController.m
//  DCDisplayViewController
//
//  Created by dashen on 2017/9/5.
//  Copyright © 2017年 RocketsChen. All rights reserved.
//

#import "DCDemo03ViewController.h"

// Controllers

// Models

// Views

// Vendors

// Categories

// Others

@interface DCDemo03ViewController ()



@end

@implementation DCDemo03ViewController

#pragma mark - LazyLoad

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"测试01",@"测试02",@"测试03"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //随机色
        [self addChildViewController:vc];
    }
}


@end
