#import "OpenhiitBackgroundServicePlugin.h"
#if __has_include(<openhiit_background_service_ios/openhiit_background_service_ios-Swift.h>)
#import <openhiit_background_service_ios/openhiit_background_service_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "openhiit_background_service_ios-Swift.h"
#endif

@interface GeneratedPluginRegistrant : NSObject
+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry;
@end


@implementation OpenhiitBackgroundServicePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOpenhiitBackgroundServicePlugin registerWithRegistrar:registrar];
}

+ (void)setPluginRegistrantCallback:(FlutterPluginRegistrantCallback)callback {
    [SwiftOpenhiitBackgroundServicePlugin setPluginRegistrantCallback:callback];
}

+ (nullable Class)lookupGeneratedPluginRegistrant {
    NSString* classNameToCompare = @"GeneratedPluginRegistrant";
    return NSClassFromString(classNameToCompare);
}

+ (void)registerEngine:(FlutterEngine*)engine {
    [[OpenhiitBackgroundServicePlugin lookupGeneratedPluginRegistrant] registerWithRegistry:engine];
}
@end
