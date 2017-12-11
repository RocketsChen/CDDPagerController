//
//  DCDemo04ViewController.m
//  DCDisplayViewController
//
//  Created by dashen on 2017/9/5.
//  Copyright © 2017年 RocketsChen. All rights reserved.
//

#import "DCDemo04ViewController.h"

// Controllers

// Models

// Views

// Vendors

// Categories

// Others

@interface DCDemo04ViewController ()



@end

@implementation DCDemo04ViewController

#pragma mark - LazyLoad

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    
    [self setUpDisplayStyle:^(UIColor *__autoreleasing *titleScrollViewBgColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIColor *__autoreleasing *proColor, UIFont *__autoreleasing *titleFont, CGFloat *titleButtonWidth, BOOL *isShowPregressView, BOOL *isOpenStretch, BOOL *isOpenShade) {
        
        *selColor = [UIColor orangeColor];
        
        *isOpenShade = YES;
        *isShowPregressView = YES;
    }];

    
    
    [self setUpTitleScale:^(CGFloat *titleScale) { //titleScale范围在0到1之间  <0 或者 > 1 则默认不缩放 默认设置titleScale就开启缩放，不设置则关闭
        *titleScale = 0.3;
    }];
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{ //模拟网络延迟

        NSArray *titles = @[@"测试01",@"测试02",@"测试03",@"测试04",@"测试05",@"测试06",@"测试07",@"测试08",@"测试09"];
        for (NSInteger i = 0; i < titles.count; i++) {
            UIViewController *vc = [UIViewController new];
            vc.title = titles[i];
            vc.view.backgroundColor = RandColor; //随机色
            [self addChildViewController:vc];
        }
        [self setUpRefreshDisplay]; //刷新
    });
}


@end
