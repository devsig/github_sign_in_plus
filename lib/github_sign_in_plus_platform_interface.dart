import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'github_sign_in_plus_method_channel.dart';

abstract class GithubSignInPlusPlatform extends PlatformInterface {
  /// Constructs a GithubSignInPlusPlatform.
  GithubSignInPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static GithubSignInPlusPlatform _instance = MethodChannelGithubSignInPlus();

  /// The default instance of [GithubSignInPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelGithubSignInPlus].
  static GithubSignInPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GithubSignInPlusPlatform] when
  /// they register themselves.
  static set instance(GithubSignInPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
