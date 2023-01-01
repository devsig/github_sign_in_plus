#import "GithubSignInPlusPlugin.h"
#if __has_include(<github_sign_in_plus/github_sign_in_plus-Swift.h>)
#import <github_sign_in_plus/github_sign_in_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "github_sign_in_plus-Swift.h"
#endif

@implementation GithubSignInPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGithubSignInPlusPlugin registerWithRegistrar:registrar];
}
@end
