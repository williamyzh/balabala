//
//  nearbyViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "NearbyViewController.h"
#import "TeamInfoCell.h"
#import "PropDetailOfTeamView.h"
#import "TeamVSView.h"
@interface NearbyViewController ()<UITableViewDataSource,UITableViewDelegate>;
@property(nonatomic, strong) UITableView *nearbyTeam;
@property(nonatomic, strong) PropDetailOfTeamView *propDetailOfTeam;
@property(nonatomic, strong) TeamVSView *teamVS;
@end

@implementation NearbyViewController
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

- (PropDetailOfTeamView *)propDetailOfTeam{
    if (_propDetailOfTeam == nil) {
        _propDetailOfTeam = [[PropDetailOfTeamView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
        _propDetailOfTeam.backgroundColor = [UIColor blackColor];

    }
    return _propDetailOfTeam;
}

- (TeamVSView *)teamVS
{
    if (_teamVS == nil) {
        _teamVS = [[TeamVSView alloc] initWithFrame:CGRectMake(0, 200, 320, 280)];
    }
    return _teamVS;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nearbyTeam = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-40)];
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
    TeamInfoCell *nearbycell = [tableView dequeueReusableCellWithIdentifier:cellidenti];
    if (nearbycell == nil) {
        nearbycell = [[[NSBundle mainBundle] loadNibNamed:@"TeamInfoCell" owner:self options:nil]lastObject];
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
