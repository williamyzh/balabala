//
//  MypersonalData.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-19.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MypersonalData : NSManagedObject

@property (nonatomic, retain) NSString * approve;
@property (nonatomic, retain) NSString * assistent;
@property (nonatomic, retain) NSString * backboard;
@property (nonatomic, retain) NSString * bestliketeam;
@property (nonatomic, retain) NSString * breakThrough;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * namealias;
@property (nonatomic, retain) NSString * personalphone;
@property (nonatomic, retain) NSData * personimage;
@property (nonatomic, retain) NSString * score;
@property (nonatomic, retain) NSString * teamname;
@property (nonatomic, retain) NSString * persontemplate;

@end
