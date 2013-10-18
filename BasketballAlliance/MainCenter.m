//
//  MainCenter.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "MainCenter.h"
#import <CoreData/CoreData.h>
#import "TeamInfo.h"
#import "MypersonalData.h"

@interface MainCenter ()
@property(nonatomic, readwrite,strong) NSManagedObjectContext *managedObjectContext;
@property(nonatomic,readwrite,strong) NSManagedObjectModel *managedObjectModel;
@property(nonatomic, readwrite,strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@end

static MainCenter *_mainCenter;
@implementation MainCenter
+ (instancetype)shareDistance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mainCenter = [[MainCenter alloc] init];
        
    });
    return _mainCenter;
}
- (NSManagedObjectContext *)managedObjectContext{
    if (!_managedObjectContext  ) {
        _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        [_managedObjectContext setPersistentStoreCoordinator:self.persistentStoreCoordinator];
    }
    return _managedObjectContext;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator{
    if (!_persistentStoreCoordinator) {
        _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.managedObjectModel];
        __autoreleasing NSError *error;
        NSString *filepath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString *file = [filepath stringByAppendingPathComponent:@"maindata.sqlite3"];
        
        [_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:[NSURL URLWithString:file] options:nil error:&error];
    }
    return _persistentStoreCoordinator;
}

- (NSManagedObjectModel *)managedObjectModel{
    if (!_managedObjectModel) {
        _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:[NSURL URLWithString:[[NSBundle mainBundle]pathForResource:@"MainModel" ofType:@"momd"]]];
    }
    return _managedObjectModel;
}

- (TeamInfo *)insertTeamInfo:(NSDictionary *)teamDic{
    TeamInfo *info = [NSEntityDescription insertNewObjectForEntityForName:@"TeamInfo" inManagedObjectContext:self.managedObjectContext];
    info.teamname = teamDic[@"teamname"];
    info.teamsybol = teamDic[@"teamsybol"];
    info.capital = teamDic[@"capital"];
    info.vshistory = teamDic[@"vshistory"];
    info.approve = teamDic[@"approve"];
    return info;
}

- (MypersonalData *)insertMyPersonalData:(NSDictionary *)myDic{
    MypersonalData *personalData = [NSEntityDescription insertNewObjectForEntityForName:@"MypersonalData" inManagedObjectContext:self.managedObjectContext];
    personalData.name = myDic[@"name"];
    personalData.namealias = myDic[@"namealias"];
    personalData.approve = myDic[@"approve"];
    personalData.bestliketeam = myDic[@"bestliketeam"];
    personalData.template = myDic[@"template"];
    personalData.teamname = myDic[@"teamname"];
    personalData.breakThrough = myDic[@"breakThrough"];
    personalData.assistent = myDic[@"assistent"];
    personalData.backboard = myDic[@"backboard"];
    personalData.score = myDic[@"score"];
    personalData.personimage = myDic[@"personimage"];
    personalData.personalphone = myDic[@"personalphone"];
    
    return personalData;
}

- (NSDictionary *)fetchRequestFromType:(NSFetchDestnationType )type {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    if (type == NSPersonalDataType) {
        [fetchRequest setEntity:[NSEntityDescription entityForName:@"MypersonalData" inManagedObjectContext:self.managedObjectContext]];
    }
    else if (type == NSTeamInfoType){
        [fetchRequest setEntity:[NSEntityDescription entityForName:@"TeamInfo" inManagedObjectContext:self.managedObjectContext]];
    }
    [fetchRequest setResultType:NSDictionaryResultType];
    __autoreleasing NSError *error;
   NSArray *result = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    NSDictionary *resultDic = [result lastObject];
  
    return resultDic;
}

@end
