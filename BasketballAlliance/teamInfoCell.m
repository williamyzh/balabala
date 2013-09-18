//
//  teamInfoCell.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-17.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "teamInfoCell.h"

@interface teamInfoCell ()
@property(nonatomic, strong) IBOutlet UILabel *teamName;
@property(nonatomic, strong) IBOutlet UILabel *teamDelartion;
@property(nonatomic, strong) IBOutlet UIImageView *teamSybol;
@end
@implementation teamInfoCell
@synthesize teamInfo = _teamInfo;
@synthesize teamDelartion = _teamDelartion;
@synthesize teamSybol = _teamSybol;
@synthesize teamName = _teamName;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configWithData:(NSDictionary *)dic{
    self.teamSybol.image = dic[@"image"];
}
@end
