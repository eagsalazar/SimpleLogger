#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface SimpleLogger : CDVPlugin {}
- (void) logAtLevel: (CDVInvokedUrlCommand *) command;
@end

