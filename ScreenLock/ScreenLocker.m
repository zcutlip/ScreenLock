//
//  ScreenLocker.m
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/12/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import "ScreenLocker.h"
extern void SACLockScreenImmediate();

@implementation ScreenLocker

-(void)lockScreen
{
    SACLockScreenImmediate();
}

@end
