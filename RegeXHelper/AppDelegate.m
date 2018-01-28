//
//  AppDelegate.m
//  RegeXHelper
//
//  Created by Matjaz Suber on 19/01/14.
//  Copyright (c) 2014 Matjaz Suber. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)btnRUn:(id)sender {
    NSString *expression = [self.txtExpression stringValue] != NULL ? [self.txtExpression stringValue] : @"";
    NSString *replace = [self.txtReplace stringValue] != NULL ? [self.txtReplace stringValue] : @"";
    NSString *textIn = [self.txtTextIn stringValue] != NULL ? [self.txtTextIn stringValue] : @"";
    
    if ([expression isEqualToString:(@"")] || [replace isEqualToString:(@"")]) {
        NSAlert *allert = [[NSAlert alloc] init];
        [allert setMessageText:@"Please insert all required values."];
        [allert addButtonWithTitle:@"OK"];
        [allert setAlertStyle:NSWarningAlertStyle];
        
        if([allert runModal] == NSAlertFirstButtonReturn){
            //OK clicked
        }
    }
    else{
        //Regex
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:expression options:NSRegularExpressionCaseInsensitive error:&error];
        NSString *textOut = [regex stringByReplacingMatchesInString:textIn options:0 range:NSMakeRange(0, [textIn length]) withTemplate:replace];
        if(error){
            NSLog(@"Error while performing regex: %@", error);
        }
        NSLog(@"Regex modified text: %@", textOut);
        
        [self.txtTextOut setStringValue:textOut];
    }
}

- (IBAction)btnClear:(id)sender {
    [self.txtExpression setStringValue:@""];
    [self.txtReplace setStringValue:@""];
    [self.txtTextIn setStringValue:@""];
    [self.txtTextOut setStringValue:@""];
}

- (IBAction)btnClose:(id)sender {
    [NSApp terminate:self];
}
@end