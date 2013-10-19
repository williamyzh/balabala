//
//  ViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-17.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "LoginViewController.h"
#import "TeamInfoCell.h"
#import "LoginView.h"
#import "MainCenter.h"

@interface LoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) UITableView *infotable;
@end

@implementation LoginViewController
@synthesize infotable;
@synthesize info;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //creat data by myself
    UIImage *image = [UIImage imageNamed:@"personimage.png"];
    NSData *data = (NSData *)UIImagePNGRepresentation(image);
    NSDictionary *dicdata = [NSDictionary dictionaryWithObjectsAndKeys:@"23",@"approve" ,
                             @"10",@"assistent",
                             @"15",@"backboard",
                             @"Lakers",@"bestliketeam",
                             @"Strong!", @"breakThrough",
                             @"张翰",@"name",
                             @"小艾弗森",@"namealias",
                             @"13895666377",@"personalphone",
                             data,@"personalimage",
                             @"26",@"score",
                             @"鲨鱼队",@"teamname",
                             @"克里斯 保罗",@"persontemplate",nil];
    [[MainCenter shareDistance] insertMyPersonalData:dicdata];
    [[MainCenter shareDistance] saveData];
    [[MainCenter shareDistance] fetchRequestFromType:NSPersonalDataType];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:178/255 green:8/255 blue:10/255 alpha:1.0f];
    self.infotable = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height-40) style:UITableViewStylePlain];
    self.title = @"篮球联盟";
    self.infotable.delegate = self;
    self.infotable.dataSource = self;
    self.info = [NSDictionary dictionaryWithObject:[UIImage imageNamed:@"teamSybol.jpg"] forKey:@"image"];
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

- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 83.0f;
}

- (TeamInfoCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentider = @"teamInfoCell";
    TeamInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentider];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TeamInfoCell" owner:self options:nil] lastObject];
    }
    [cell configWithData:info];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LoginView *loginview = [[[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:self options:nil] lastObject];
    loginview.frame =CGRectMake(1200, 0, self.view.frame.size.width, self.view.frame.size.height);
    loginview.delegate = self;
    [self.view addSubview:loginview];
    [UIView animateWithDuration:1.0f animations:^{
        loginview.frame = CGRectMake(0, 0, 320, self.view.frame.size.height);
    } completion:^(BOOL finished) {
        NSLog(@"good");
    }];
}
#pragma mark - selfMethod
- (void)loginbutton{
    NSLog(@"log in");
    HomeViewController *home = [[HomeViewController alloc] init];
    [self.navigationController pushViewController:home animated:YES];
}
@end
