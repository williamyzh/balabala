//
//  MainCenter.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
@class TeamInfo;
@class MypersonalData;

typedef NS_ENUM(NSInteger, NSFetchDestnationType){
    NSPersonalDataType,
    NSTeamInfoType,
    NSAccountType
};

@interface MainCenter : NSObject
@property(nonatomic, readonly) NSManagedObjectContext *managedObjectContext;
@property(nonatomic, readonly) NSManagedObjectModel *managedObjectModel;
@property(nonatomic, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (instancetype)shareDistance;
- (TeamInfo *)insertTeamInfo:(NSDictionary *)teamDic;
- (MypersonalData *)insertMyPersonalData:(NSDictionary *)myDic;
- (Account *)insertAccount:(NSDictionary *)accountDic;
- (BOOL)WhetherAccountIsRight:(NSDictionary *)dic;

- (NSDictionary *)fetchRequestFromType:(NSFetchDestnationType )type;
- (void)saveData;
@end
