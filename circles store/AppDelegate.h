//
//  AppDelegate.h
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

