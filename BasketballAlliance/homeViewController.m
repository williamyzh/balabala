//
//  homeViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    nearbyViewController *nearby = [[nearbyViewController alloc] init];
    teammatesViewController *teammates = [[teammatesViewController alloc] init];
    noticeViewController *notice = [[noticeViewController alloc] init];
    myViewController *myself = [[myViewController alloc] init];
    NSArray *controllerArray = [[NSArray alloc]initWithObjects:nearby,teammates,notice,myself, nil];
    self.viewControllers = controllerArray;
    [[self.tabBar.items objectAtIndex:0] setTitle:@"附近"];
    [[self.tabBar.items objectAtIndex:1] setTitle:@"队友 "];
    [[self.tabBar.items objectAtIndex:2] setTitle:@"公告"];
    [[self.tabBar.items objectAtIndex:3] setTitle:@"我的"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
