//
//  MainCenter.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TeamInfo;
@class MypersonalData;

typedef NS_ENUM(NSInteger, NSFetchDestnationType){
    NSPersonalDataType,
    NSTeamInfoType
};

@interface MainCenter : NSObject
@property(nonatomic, readonly) NSManagedObjectContext *managedObjectContext;
@property(nonatomic, readonly) NSManagedObjectModel *managedObjectModel;
@property(nonatomic, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (instancetype)shareDistance;
- (TeamInfo *)insertTeamInfo:(NSDictionary *)teamDic;
- (MypersonalData *)insertMyPersonalData:(NSDictionary *)myDic;

- (NSDictionary *)fetchRequestFromType:(NSFetchDestnationType )type;

@end
