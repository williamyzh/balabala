//
//  ViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-17.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "loginViewController.h"
#import "teamInfoCell.h"
@interface loginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) UITableView *infotable;
@end

@implementation loginViewController
@synthesize infotable;
@synthesize info;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.infotable = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.infotable.delegate = self;
    self.infotable.dataSource = self;
    [self.view addSubview:infotable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - tableviewdelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90.0;
}

- (teamInfoCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentider = @"teamInfoCell";
    teamInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentider];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"teamInfoCell" owner:nil options:nil] lastObject];
    }
//    [cell configWithData:info];
    return cell;
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
@end
