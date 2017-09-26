//
//  ViewController.m
//  CDDPagerControllerDemo
//
//  Created by apple on 2017/9/5.
//  Copyright © 2017年 RocketsChen. All rights reserved.
//

#import "ViewController.h"

#import "DCDemo01ViewController.h"
#import "DCDemo02ViewController.h"
#import "DCDemo03ViewController.h"
#import "DCDemo04ViewController.h"
#import "DCDemo05ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

/* tableView */
@property (strong , nonatomic)UITableView *tableView;

@end

@implementation ViewController

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.frame = self.view.bounds;
        _tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
        _tableView.scrollIndicatorInsets = _tableView.contentInset;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"DisplayViewCell"];
        
        [self.view addSubview:_tableView];
    }
    return _tableView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpBase];
}

#pragma mark - baseSetting
- (void)setUpBase
{
    self.title = @"DCPagerController";
    self.tableView.backgroundColor = self.view.backgroundColor;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.tableView.rowHeight = 50;
    
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero]; //去掉多余的下划线
}


#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DisplayViewCell" forIndexPath:indexPath];
    NSArray *array = @[@"🐒",@"🐱",@"🐶",@"🐯",@"🐭"];
    cell.textLabel.font = [UIFont systemFontOfSize:16];
    cell.textLabel.text = [NSString stringWithFormat:@"%@第%zd种类型",array[indexPath.row],indexPath.row];
    return cell;
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            DCDemo01ViewController *dcDemo = [DCDemo01ViewController new];
            [self.navigationController pushViewController:dcDemo animated:YES];
        }
            break;
        case 1:{
            DCDemo02ViewController *dcDemo = [DCDemo02ViewController new];
            [self.navigationController pushViewController:dcDemo animated:YES];
        }
            break;
        case 2:{
            DCDemo03ViewController *dcDemo = [DCDemo03ViewController new];
            [self.navigationController pushViewController:dcDemo animated:YES];
        }
            break;
        case 3:{
            DCDemo04ViewController *deDemo = [DCDemo04ViewController new];
            [self.navigationController pushViewController:deDemo animated:YES];
        }
            break;
        case 4:{
            DCDemo05ViewController *deDemo = [DCDemo05ViewController new];
            [self.navigationController pushViewController:deDemo animated:YES];
        }
            break;
            
        default:
            break;
    }
    
    
}

@end
