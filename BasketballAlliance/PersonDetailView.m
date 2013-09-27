//
//  PersonDetailView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/25/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "PersonDetailView.h"
#import <QuartzCore/QuartzCore.h>

@interface PersonDetailView ()
@property(nonatomic, strong) UIImageView *personImage;
@property(nonatomic, strong) UILabel *name;
@property(nonatomic, strong) UILabel *alias;
@property(nonatomic, strong) UILabel *likeTeam;
@property(nonatomic, strong) UILabel *NBAman;
@property(nonatomic, strong) UILabel *likeWho;
@property(nonatomic, strong) UILabel *yourTeam;
@property(nonatomic, strong) UILabel *breakthrough;
@property(nonatomic, strong) UILabel *assist;
@property(nonatomic, strong) UILabel *backboard;
@property(nonatomic, strong) UILabel *personalScore;
@property(nonatomic, strong) UIScrollView *mainInformaiton;
@end
@implementation PersonDetailView
@synthesize personImage = _personImage;
@synthesize name = _name;
@synthesize alias = _alias;
@synthesize likeTeam = _likeTeam;
@synthesize NBAman = _NBAman;
@synthesize likeWho = _likeWho;
@synthesize yourTeam = _yourTeam;
@synthesize breakthrough = _breakthrough;
@synthesize assist = _assist;
@synthesize backboard = _backboard;
@synthesize personalScore = _personalScore;
@synthesize mainInformaiton = _mainInformaiton;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //personal image
        self.personImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        self.backgroundColor = [UIColor whiteColor];
        
        //name and alias
        UIView *nameAndAliasView = [[UIView alloc] initWithFrame:CGRectMake(120, 0, 200,130)];
        nameAndAliasView.backgroundColor = [UIColor whiteColor];
        UILabel *mingzi =[[UILabel alloc] initWithFrame:CGRectMake(20, 0, 100, 40)];
        [mingzi setBackgroundColor:[UIColor clearColor]];
        mingzi.text = @"姓名:";
        [nameAndAliasView addSubview:mingzi];
        self.name =[[UILabel alloc] initWithFrame:CGRectMake(65, 0, 120, 40)];
        
        UILabel *zhuohao =[[UILabel alloc] initWithFrame:CGRectMake(20, 50, 100, 40)];
        [zhuohao setBackgroundColor:[UIColor clearColor]];
        zhuohao.text = @"绰号:";
        [nameAndAliasView addSubview:zhuohao];

        self.alias = [[UILabel alloc] initWithFrame:CGRectMake(65,50 ,120, 40)];
        [nameAndAliasView addSubview:self.name];
        [nameAndAliasView addSubview:self.alias];
        nameAndAliasView.layer.cornerRadius = 6;
        nameAndAliasView.layer.masksToBounds = YES;
        [self addSubview:nameAndAliasView];
        self.name.text = @"张勇";
        self.alias.text = @"Allen Aversion";
        //other imformation
        self.mainInformaiton = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 140,320, 290)];
        [self.mainInformaiton setBackgroundColor:[UIColor redColor]];
        self.mainInformaiton.contentSize = CGSizeMake(320, 500);
        self.mainInformaiton.pagingEnabled = YES;
        self.mainInformaiton.showsVerticalScrollIndicator = YES;
        [self addSubview:self.mainInformaiton];
        
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
#pragma mark - selfmethod
- (void)configWithData:(NSDictionary *)dic{
    
}
@end
