//
//  AppDelegate.h
//  RegeXHelper
//
//  Created by Matjaz Suber on 19/01/14.
//  Copyright (c) 2014 Matjaz Suber. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *txtExpression;

@property (weak) IBOutlet NSTextField *txtReplace;

@property (weak) IBOutlet NSTextField *txtTextIn;

@property (weak) IBOutlet NSTextField *txtTextOut;

- (IBAction)btnRUn:(id)sender;

- (IBAction)btnClear:(id)sender;

- (IBAction)btnClose:(id)sender;

@end
