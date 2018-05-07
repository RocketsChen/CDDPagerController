//
//  DCDemoViewController.m
//  DCDisplayViewController
//
//  Created by apple on 2017/9/3.
//  Copyright © 2017年 RocketsChen. All rights reserved.
//

#import "DCDemo01ViewController.h"

// Controllers

// Models

// Views

// Vendors

// Categories

// Others

@interface DCDemo01ViewController ()



@end

@implementation DCDemo01ViewController

#pragma mark - LazyLoad
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    self.selectIndex = 3; //默认选择第几个设置（不设置则默认选择第0个）
}

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setUpDisplayStyle:^(UIColor *__autoreleasing *titleScrollViewBgColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIColor *__autoreleasing *proColor, UIFont *__autoreleasing *titleFont, CGFloat *titleButtonWidth, BOOL *isShowPregressView, BOOL *isOpenStretch, BOOL *isOpenShade) {
        *titleScrollViewBgColor = [UIColor whiteColor]; //标题View背景色（默认标题背景色为白色）
        *norColor = [UIColor darkGrayColor];            //标题未选中颜色（默认未选中状态下字体颜色为黑色）
        *selColor = [UIColor orangeColor];              //标题选中颜色（默认选中状态下字体颜色为红色）
        *proColor = [UIColor purpleColor];              //滚动条颜色（默认为标题选中颜色）
        *titleFont = [UIFont systemFontOfSize:16];      //字体尺寸 (默认fontSize为15)
        
        *titleButtonWidth = 100;                        //标题按钮的宽度（有默认值）
        
        /*
         以下BOOL值默认都为NO
         */
        *isShowPregressView = YES;                      //是否开启标题下部Pregress指示器
        *isOpenStretch = YES;                           //是否开启指示器拉伸效果
        *isOpenShade = YES;                             //是否开启字体渐变
    }];
    
    
    
//    [self setUpTitleScale:^(CGFloat *titleScale) { //titleScale范围在0到1之间  <0 或者 > 1 则默认不缩放 默认设置titleScale就开启缩放，不设置则关闭
//        *titleScale = 0.1;
//    }];
//
//    [self setUpProgressAttribute:^(CGFloat *progressLength, CGFloat *progressHeight, CGFloat *bottomDistance) {//progressLength 设置底部progress指示器的长度，有默认值为按钮的宽度的百分之56  progressHeight默认高度4(并且不能大于10)
//        *progressLength = 40;
//        *progressHeight = 5;
//    }];
    
//    [self setUpTopTitleViewAttribute:^(CGFloat *topDistance, CGFloat *titleViewHeight) {
//        *topDistance = 200;
//    }];
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"测试01",@"测试02",@"测试03",@"测试04",@"测试05"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //随机色
        [self addChildViewController:vc];
    }
}


@end
