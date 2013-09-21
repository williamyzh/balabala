//
//  nearbyViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "nearbyViewController.h"
#import "teamInfoCell.h"
#import "propDetailOfTeamView.h"
#import "teamVSView.h"
@interface nearbyViewController ()<UITableViewDataSource,UITableViewDelegate>;
@property(nonatomic, strong) UITableView *nearbyTeam;
@property(nonatomic, strong) propDetailOfTeamView *propDetailOfTeam;
@property(nonatomic, strong) teamVSView *teamVS;
@end

@implementation nearbyViewController
@synthesize nearbyTeam = _nearbyTeam;
@synthesize propDetailOfTeam = _propDetailOfTeam;
@synthesize teamVS = _teamVS;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (propDetailOfTeamView *)propDetailOfTeam{
    if (_propDetailOfTeam == nil) {
        _propDetailOfTeam = [[propDetailOfTeamView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
        _propDetailOfTeam.backgroundColor = [UIColor blackColor];

    }
    return _propDetailOfTeam;
}
- (teamVSView *)teamVS
{
    if (_teamVS == nil) {
        _teamVS = [[teamVSView alloc] initWithFrame:CGRectMake(0, 200, 320, 280)];
    }
    return _teamVS;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nearbyTeam = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.nearbyTeam.delegate = self;
    self.nearbyTeam.dataSource = self;
    [self.view addSubview:self.nearbyTeam];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - tableviewdatesource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 83.0f;
}
#pragma mark - tableviewDelegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidenti = @"nearbyCell";
    teamInfoCell *nearbycell = [tableView dequeueReusableCellWithIdentifier:cellidenti];
    if (nearbycell == nil) {
        nearbycell = [[[NSBundle mainBundle] loadNibNamed:@"teamInfoCell" owner:self options:nil]lastObject];
    }
    NSDictionary *info = [NSDictionary dictionaryWithObject:[UIImage imageNamed:@"teamSybol.jpg"] forKey:@"image"];
    [nearbycell configWithData:info];

    return nearbycell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"teamSybol.jpg",@"image",@"魔术",@"teamname",@"永不放弃",@"teamdeclation",@"五星",@"teamscore",@"王铁尧",@"teamleader",@"张飞 关羽 刘备",@"teammates",nil];
    [UIView animateWithDuration:1.5f animations:^{
        [self.view addSubview:self.propDetailOfTeam];
        [self.view addSubview:self.teamVS];
    } completion:^(BOOL finished) {
        
    }];
    
    [self.propDetailOfTeam configWithPerData:dic];
}
- (void)configWithData:(NSDictionary *)data{
    
}
@end
