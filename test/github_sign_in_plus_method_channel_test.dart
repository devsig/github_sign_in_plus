import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_sign_in_plus/github_sign_in_plus_method_channel.dart';

void main() {
  MethodChannelGithubSignInPlus platform = MethodChannelGithubSignInPlus();
  const MethodChannel channel = MethodChannel('github_sign_in_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
