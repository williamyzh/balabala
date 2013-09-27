//
//  PersonalDetailViewCell.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-27.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, PersonalDetailViewContentType){
    PersonalDetailViewContentImage,
    PersonalDetailViewContentNSString
};
@interface PersonalDetailViewCell : UIView
@property(nonatomic, strong) UILabel *intalName;
@property(nonatomic, strong) UILabel *evaluateContcent;
@property(nonatomic,strong) UIImageView *evaluateImage;
- (void)configWithData:(NSDictionary *)dic withType:(PersonalDetailViewContentType )dataType;
@end
