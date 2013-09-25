//
//  propDetailOfTeamView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/20/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//
#define PRODETAIL_LABEL_WIDTH 100
#define PRODETAIL_LABEL_HEIGH 30
#define PRODETAIL_LABEL_X 180
#import "PropDetailOfTeamView.h"

@interface PropDetailOfTeamView ()
@property(nonatomic, strong) UIImageView *teamSybol;
@property(nonatomic, strong) UILabel *teamName;
@property(nonatomic, strong) UILabel *teamLeader;
@property(nonatomic, strong) UILabel *teamMates;
@property(nonatomic, strong) UILabel *teamDeclation;
@property(nonatomic, strong) UILabel *teamScore;
@end
@implementation PropDetailOfTeamView
@synthesize teamSybol = _teamSybol;
@synthesize teamName = _teamName;
@synthesize teamMates = _teamMates;
@synthesize teamDeclation = _teamDeclation;
@synthesize teamScore = _teamScore;
@synthesize teamLeader = _teamLeader;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.teamSybol = [[UIImageView alloc] initWithFrame:CGRectMake(10, 40,143 , 111)];
        self.teamName = [[UILabel alloc] initWithFrame:CGRectMake(PRODETAIL_LABEL_X, 40, PRODETAIL_LABEL_WIDTH, PRODETAIL_LABEL_HEIGH)];
        self.teamLeader = [[UILabel alloc] initWithFrame:CGRectMake(PRODETAIL_LABEL_X, 70, PRODETAIL_LABEL_WIDTH, PRODETAIL_LABEL_HEIGH)];
        self.teamMates = [[UILabel alloc] initWithFrame:CGRectMake(PRODETAIL_LABEL_X, 100, PRODETAIL_LABEL_WIDTH, PRODETAIL_LABEL_HEIGH)];
        self.teamDeclation = [[UILabel alloc] initWithFrame:CGRectMake(PRODETAIL_LABEL_X, 130, PRODETAIL_LABEL_WIDTH, PRODETAIL_LABEL_HEIGH)];
        self.teamScore = [[UILabel alloc] initWithFrame:CGRectMake(PRODETAIL_LABEL_X, 160, PRODETAIL_LABEL_WIDTH, PRODETAIL_LABEL_HEIGH)];
        [self addSubview:self.teamSybol];
        [self addSubview:self.teamName];
        [self addSubview:self.teamLeader];
        [self addSubview:self.teamMates];
        [self addSubview:self.teamDeclation];
        [self addSubview:self.teamScore];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void)configWithPerData:(NSDictionary *)data{
    self.teamSybol.image = [UIImage imageNamed:[data objectForKey:@"image"]];
    self.teamName.text = data[@"teamname"];
    self.teamMates.text = data[@"teammates"];
    self.teamLeader.text = data[@"teamleader"];
    self.teamDeclation.text = data[@"teamdeclation"];
    self.teamScore.text  = data[@"teamscore"];
}

@end
