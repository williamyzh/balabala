//
//  teammatesViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "teammatesViewController.h"
#import "teamMatesView.h"

@interface teammatesViewController ()
@property(nonatomic, strong)teamMatesView *teammatesList;
@end

@implementation teammatesViewController
@synthesize teammatesList = _teammatesList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (teamMatesView *)teammatesList{
    if (_teammatesList == nil) {
        _teammatesList = [[teamMatesView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    }
    return _teammatesList;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"teammates";
    [self.view addSubview:label];
    [self.view addSubview:self.teammatesList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
