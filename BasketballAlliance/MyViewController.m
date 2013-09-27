//
//  myViewController.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "MyViewController.h"
#import "PersonDetailView.h"
@interface MyViewController ()

@end

@implementation MyViewController

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
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:237/255 green:237/255 blue:237/255 alpha:1.0f];
    PersonDetailView *personDetail = [[PersonDetailView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:personDetail];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
