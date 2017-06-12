//
//  AppDelegate.m
//  ScreenLock
//
//  Created by Zachary Cutlip on 6/6/17.
//  Copyright © 2017 Zachary Cutlip. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong, readwrite) NSStatusItem *statusItem;
- (IBAction)quitClicked:(NSMenuItem *)sender;
@property (weak) IBOutlet NSMenu *statusMenu;


@end

@implementation AppDelegate

NSImage *icon;

- (void)setupStatusItem
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    //self.statusItem.title=@"ScreenLock";
    icon=[NSImage imageNamed:@"statusIcon"];
    icon.template=true;
    self.statusItem.image=icon;
    self.statusItem.menu=self.statusMenu;
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
   [self setupStatusItem];
    NSLog(@"Finished setting up status item.\n");
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)quitClicked:(NSMenuItem *)sender
{
    [[NSApplication sharedApplication]terminate:self];
}
@end
