//
//  Account.h
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-10-21.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Account : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * password;

@end
