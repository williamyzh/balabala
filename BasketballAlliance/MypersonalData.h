//
//  MypersonalData.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MypersonalData : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * namealias;
@property (nonatomic, retain) NSNumber * approve;
@property (nonatomic, retain) NSString * bestliketeam;
@property (nonatomic, retain) NSString * template;
@property (nonatomic, retain) NSString * teamname;
@property (nonatomic, retain) NSString * breakThrough;
@property (nonatomic, retain) NSString * assistent;
@property (nonatomic, retain) NSNumber * backboard;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSDate * personimage;
@property (nonatomic, retain) NSNumber * personalphone;

@end
