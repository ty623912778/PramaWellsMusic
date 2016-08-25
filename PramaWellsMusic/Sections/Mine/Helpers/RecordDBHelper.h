//
//  RecordDBHelper.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayRecordEntity.h"

@interface RecordDBHelper : NSObject

+ (void)insertWithRecordEntity:(PlayRecordEntity *)recordEntity;

+ (NSArray *)getListDataWithWhere:(NSString *)where;

+ (void)deleteWithRecordEntity:(PlayRecordEntity *)recordEntity;

+ (PlayRecordEntity *)getRecordEntity;
@end