//
//  ViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-17.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "loginViewController.h"
#import "teamInfoCell.h"
#import "loginView.h"

@interface loginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) UITableView *infotable;
@end

@implementation loginViewController
@synthesize infotable;
@synthesize info;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:178/255 green:8/255 blue:10/255 alpha:1.0f];
    self.infotable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-40) style:UITableViewStylePlain];
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

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 83.0f;
}

- (teamInfoCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentider = @"teamInfoCell";
    teamInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentider];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"teamInfoCell" owner:self options:nil] lastObject];
    }
    [cell configWithData:info];
    return cell;
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    loginView *loginview = [[[NSBundle mainBundle] loadNibNamed:@"loginView" owner:self options:nil] lastObject];
    loginview.frame =CGRectMake(1200, 0, 320, 480);
    loginview.delegate = self;
    [self.view addSubview:loginview];
    [UIView animateWithDuration:1.0f animations:^{
        loginview.frame = CGRectMake(0, 0, 320, 480);
    } completion:^(BOOL finished) {
        NSLog(@"good");
    }];
}
-(void)loginbutton{
    NSLog(@"log in");
    homeViewController *home = [[homeViewController alloc] init];
    [self presentViewController:home animated:YES completion:^{
        
    }];
}
@end
