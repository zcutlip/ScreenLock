//
//  ScreenLockServiceController.h
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/13/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface ScreenLockServiceController : NSObject
-(void)screenLockService:(NSPasteboard *)pboard
                userData:(NSString *)userData
                   error:(NSString **)error;
@end
