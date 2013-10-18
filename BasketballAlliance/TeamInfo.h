//
//  TeamInfo.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TeamInfo : NSManagedObject

@property (nonatomic, retain) NSString * teamname;
@property (nonatomic, retain) NSDate * teamsybol;
@property (nonatomic, retain) NSString * capital;
@property (nonatomic, retain) NSString * vshistory;
@property (nonatomic, retain) NSString * approve;

@end
