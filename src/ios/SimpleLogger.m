#import "SimpleLogger.h"
#import <Cordova/CDV.h>

@implementation SimpleLogger

- (void) pluginInitialize {
  [super pluginInitialize];
  NSLog(@"*** SimpleLogger.pluginInitialize! ***");
}

- (void) logAtLevel: (CDVInvokedUrlCommand *) command {
  NSString* level = [command.arguments objectAtIndex:0];
  NSString* message = [command.arguments objectAtIndex:1];
  if([level  isEqual: @"ERROR"]) {
    NSLog(@"🔴  %@", message);
  } else if ([level  isEqual: @"INFO"]){
    NSLog(@"🔵  %@", message);
  } else {
    NSLog(@"%@", message);
  }
}

@end
