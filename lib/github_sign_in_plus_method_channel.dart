import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'github_sign_in_plus_platform_interface.dart';

/// An implementation of [GithubSignInPlusPlatform] that uses method channels.
class MethodChannelGithubSignInPlus extends GithubSignInPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('github_sign_in_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
