//
//  ViewController.m
//  PrallaxTableView
//
//  Created by zt on 15/3/26.
//  Copyright (c) 2015年 justzt. All rights reserved.
//

#import "ViewController.h"
#import "ParallaxTableView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>
{
    ParallaxTableView *praTbView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor colorWithRed:(40./225) green:(43./225) blue:(53./225) alpha:1];
    
    praTbView = [[ParallaxTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    praTbView.delegate = self;
    praTbView.dataSource = self;
    praTbView.backgroundColor = [UIColor clearColor];
    praTbView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    [praTbView configHeaderViewWithImageName:@"img" height:200. offset:-50 addToView:self.view];
    [self.view addSubview:praTbView];
}



#pragma mark - UITableViewDelegate, UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 13;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"RankingCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    cell.textLabel.text = @"sadf";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [praTbView modifyHeaderImageOffset:scrollView];
}

@end