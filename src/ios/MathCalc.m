/********* MathCalc.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalc : CDVPlugin {
  // Member variables go here.
}

- (void)sayHello:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
- (void)subtract:(CDVInvokedUrlCommand*)command;
- (void)multiply:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalc

- (void)sayHello:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    NSString* hello = [@"Hello " stringByAppendingString: echo];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:hello];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)add:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber* p1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
    NSNumber* p2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

    if (p1 >= 0 && p2 >= 0) {
        NSNumber* total = @(p1 + p2);

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)subtract:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber* p1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
    NSNumber* p2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

    if (p1 >= 0 && p2 >= 0) {
        NSNumber* subtract = @(p1 - p2);

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:subtract];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)multiply:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber* p1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
    NSNumber* p2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

    if (p1 >= 0 && p2 >= 0) {
        NSNumber* subtract = @(p1 * p2);

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:subtract];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
