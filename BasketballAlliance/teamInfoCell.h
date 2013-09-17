//
//  teamInfoCell.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-17.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface teamInfoCell : UITableViewCell
@property(nonatomic, strong) NSDictionary *teamInfo ;
- (void)configWithData:(NSDictionary *)dic;
@end
