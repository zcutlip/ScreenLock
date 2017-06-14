//
//  ScreenLockServiceController.m
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/13/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import "ScreenLockServiceController.h"
#import "ScreenLocker.h"

@implementation ScreenLockServiceController

-(void)screenLockService:(NSPasteboard *)pboard
                userData:(NSString *)userData
                   error:(NSString **)error
{
    (void)pboard;
    (void)userData;
    (void)error;

    [[[ScreenLocker alloc] init]lockScreen];
}

@end
