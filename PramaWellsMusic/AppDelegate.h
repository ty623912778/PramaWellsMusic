//
//  AppDelegate.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/23.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;//数据库操作
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;//数据库表
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;//数据库存放方式

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

