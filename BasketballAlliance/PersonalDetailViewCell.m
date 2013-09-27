//
//  PersonalDetailViewCell.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-27.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "PersonalDetailViewCell.h"

@implementation PersonalDetailViewCell
@synthesize intalName =_intalName;
@synthesize evaluateContcent = _evaluateContcent;
@synthesize evaluateImage = _evaluateImage;
- (id)initWithFrame:(CGRect)frame withType:(PersonalDetailViewContentType )dataType
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.intalName = [[UILabel alloc] initWithFrame:CGRectMake(0, 0,60,60)];
        [self addSubview:self.intalName];
        if (dataType == PersonalDetailViewContentNSString) {
            self.evaluateContcent = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 100, 60)];
        }else{
            self.evaluateImage = [[UIImageView alloc] initWithFrame:CGRectMake(60, 0, 100, 60)];
            }
    }
    return self;
}
- (void)configWithData:(NSDictionary *)dic withType:(PersonalDetailViewContentType )dataType{
    self.intalName.text = dic[@"intalname"];
    if (dataType == PersonalDetailViewContentNSString) {
        self.evaluateContcent.text = dic[@"evaluateContcent"];
    }else{
        self.evaluateImage = dic[@"evaluateimage"];
    }

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
