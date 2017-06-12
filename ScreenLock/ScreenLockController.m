//
//  ScreenLockController.m
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/12/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ScreenLockController.h"
#import "ScreenLocker.h"

@interface ScreenLockController ()
@property (nonatomic, strong, readwrite) NSStatusItem *statusItem;
- (IBAction)lockScreenClicked:(id)sender;
- (IBAction)quitClicked:(NSMenuItem *)sender;
@property (weak) IBOutlet NSMenu *statusMenu;
@property (nonatomic,strong,readwrite) ScreenLocker *screenLocker;
@end

@implementation ScreenLockController

NSImage *icon;
- (void)setupStatusItem
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    //self.statusItem.title=@"ScreenLock";
    icon=[NSImage imageNamed:@"statusIcon"];
    icon.template=true;
    self.statusItem.image=icon;
    self.statusItem.menu=self.statusMenu;
    self.screenLocker=[[ScreenLocker alloc]init];
}

- (IBAction)lockScreenClicked:(id)sender {
    [self.screenLocker lockScreen];
}

- (IBAction)quitClicked:(NSMenuItem *)sender
{
    [[NSApplication sharedApplication]terminate:self];
}

-(void)awakeFromNib
{
    [self setupStatusItem];
    NSLog(@"Finished setting up status item.\n");
    
}
@end
