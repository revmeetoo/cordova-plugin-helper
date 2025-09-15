#import "Cordova/CDV.h"
#import "Cordova/CDVViewController.h"
#import "helper.h"

@implementation helper

- (void) func01:(CDVInvokedUrlCommand*)command;
{
    CDVPluginResult *pluginResult;

    @try
    {
        NSString *tst = [self func02];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:tst];
    }
    @catch (NSException *exception)
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:exception.reason];
    }
    @finally
    {
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

- (NSString *) func02 {
    int codes[] = { 78, 83, 76, 65, 69, 83, 65, 51 };
    int length = sizeof(codes) / sizeof(codes[0]);

    char buffer[length + 1];
    for (int i = 0; i < length; i++) {
        buffer[i] = (char)codes[i];
    }
    buffer[length] = '\0';

    return [NSString stringWithUTF8String:buffer];
}

@end
