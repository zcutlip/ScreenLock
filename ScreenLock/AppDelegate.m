//
//  AppDelegate.m
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/6/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import "AppDelegate.h"
#import "ScreenLockServiceController.h"

@interface AppDelegate ()



@end

@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    ScreenLockServiceController *screenLockService;
    
    screenLockService=[[ScreenLockServiceController alloc] init];
    [NSApp setServicesProvider:screenLockService];
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
