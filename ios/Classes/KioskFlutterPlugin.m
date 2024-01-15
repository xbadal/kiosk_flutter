#import "KioskFlutterPlugin.h"
#if __has_include(<kiosk_flutter/kiosk_flutter-Swift.h>)
#import <kiosk_flutter/kiosk_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kiosk_flutter-Swift.h"
#endif

@implementation KioskFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKioskFlutterPlugin registerWithRegistrar:registrar];
}
@end
