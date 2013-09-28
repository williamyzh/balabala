//
//  PersonDetailView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/25/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "PersonDetailView.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+Frame.h"

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
@property(nonatomic, strong) UILabel *zan;
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
@synthesize zan = _zan;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //personal image
        self.personImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,10, 100, 100)];
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.personImage];
        
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
        
        UIImageView *approve = [[UIImageView alloc] initWithFrame:CGRectMake(20,zhuohao.bottom+10 , 40, 40)];
        approve.image = [UIImage imageNamed:@"approve.jpg"];
        self.zan = [[UILabel alloc] initWithFrame:CGRectMake(approve.right, zhuohao.bottom, 60, 60)];
        [nameAndAliasView addSubview:approve];
        [nameAndAliasView addSubview:self.zan];

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
        self.mainInformaiton.contentSize = CGSizeMake(320,550);
        self.mainInformaiton.pagingEnabled = NO;
        self.mainInformaiton.showsVerticalScrollIndicator = YES;
        [self addSubview:self.mainInformaiton];
        
        //add information
        UILabel *xihuanteam = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 60)];
        xihuanteam.text =@"喜欢的球队:";
        self.likeTeam = [[UILabel alloc] initWithFrame:CGRectMake(xihuanteam.right,xihuanteam.top, 100, 60)];
        xihuanteam.backgroundColor = [UIColor clearColor];
        self.likeTeam.backgroundColor = [UIColor clearColor];
        [self.mainInformaiton addSubview:self.likeTeam];
        [self.mainInformaiton addSubview:xihuanteam];
        
        UILabel *ouxiang = [[UILabel alloc] initWithFrame:CGRectMake(20, xihuanteam.bottom, 60, 60)];
        ouxiang.text = @"偶像";
        self.NBAman = [[UILabel alloc] initWithFrame:CGRectMake(ouxiang.right, xihuanteam.bottom, 100, 60)];
        ouxiang.layer.cornerRadius = 6.0;
        ouxiang.layer.masksToBounds = YES;
        [self.mainInformaiton addSubview:ouxiang];
        [self.mainInformaiton addSubview:self.NBAman];
        
        UILabel *qiufeng = [[UILabel alloc] initWithFrame:CGRectMake(0, ouxiang.bottom, 60, 60)];
        qiufeng.text = @"模板";
        self.likeWho = [[UILabel alloc] initWithFrame:CGRectMake(qiufeng.right, ouxiang.bottom, 100, 60)];
        qiufeng.backgroundColor = [UIColor clearColor];
        self.likeWho.backgroundColor = [UIColor clearColor];
        [self.mainInformaiton addSubview:qiufeng];
        [self.mainInformaiton addSubview:self.likeWho];
        
        UILabel *qiudui = [[UILabel alloc] initWithFrame:CGRectMake(0, qiufeng.bottom, 60, 60)];
        qiudui.text = @"球队";
        self.yourTeam = [[UILabel alloc] initWithFrame:CGRectMake(qiudui.right,qiufeng.bottom , 80, 60)];
        [self.mainInformaiton addSubview:qiudui];
        [self.mainInformaiton addSubview:self.yourTeam];
        
        UILabel  *tupo = [[UILabel alloc] initWithFrame:CGRectMake(0, qiudui.bottom, 60, 60)];
        tupo.text = @"突破";
        self.breakthrough = [[UILabel alloc] initWithFrame:CGRectMake(tupo.right, qiudui.bottom, 60, 60)];
        [self.mainInformaiton addSubview:tupo];
        [self.mainInformaiton addSubview:self.breakthrough];
        
        UILabel *zhugong = [[UILabel alloc] initWithFrame:CGRectMake(0,tupo.bottom, 60, 60)];
        zhugong.text = @"助攻";
        self.assist = [[UILabel alloc] initWithFrame:CGRectMake(zhugong.right,tupo.bottom , 60, 60)];
        [self.mainInformaiton addSubview:zhugong];
        [self.mainInformaiton addSubview:self.assist];
        
        UILabel *lanban = [[UILabel alloc] initWithFrame:CGRectMake(0, zhugong.bottom, 60, 60)];
        lanban.text = @"篮板";
        self.backboard = [[UILabel alloc] initWithFrame:CGRectMake(lanban.right, zhugong.bottom, 60, 60)];
        [self.mainInformaiton addSubview:lanban];
        [self.mainInformaiton addSubview:self.backboard];
        
        UILabel *nengli = [[UILabel alloc] initWithFrame:CGRectMake(0, lanban.bottom, 60, 60)];
        nengli.text = @"能力值";
        self.personalScore = [[UILabel alloc] initWithFrame:CGRectMake(nengli.right, lanban.bottom, 60, 60)];
        [self.mainInformaiton addSubview:nengli];
        [self.mainInformaiton addSubview:self.personalScore];
        
        self.zan.text = @"(80)";
        self.personalScore.text = @"80";
        self.backboard.text = @"Weak";
        self.assist.text = @"Strong!";
        self.breakthrough.text = @"Strong!";
        self.yourTeam.text = @"鲨鱼队";
        self.likeWho.text = @"Paul";
        self.NBAman.text = @"Kobe Brant";
        self.likeTeam.text = @"湖人";
        self.personImage.image = [UIImage imageNamed:@"personimage"];
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pic_bg.png" ]];
        
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
