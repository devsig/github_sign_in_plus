import 'package:flutter_test/flutter_test.dart';
import 'package:github_sign_in_plus/github_sign_in_plus.dart';
import 'package:github_sign_in_plus/github_sign_in_plus_platform_interface.dart';
import 'package:github_sign_in_plus/github_sign_in_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGithubSignInPlusPlatform
    with MockPlatformInterfaceMixin
    implements GithubSignInPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GithubSignInPlusPlatform initialPlatform = GithubSignInPlusPlatform.instance;

  test('$MethodChannelGithubSignInPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGithubSignInPlus>());
  });

  test('getPlatformVersion', () async {
    GithubSignInPlus githubSignInPlusPlugin = GithubSignInPlus();
    MockGithubSignInPlusPlatform fakePlatform = MockGithubSignInPlusPlatform();
    GithubSignInPlusPlatform.instance = fakePlatform;

    expect(await githubSignInPlusPlugin.getPlatformVersion(), '42');
  });
}
