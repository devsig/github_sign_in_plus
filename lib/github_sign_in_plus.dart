
import 'github_sign_in_plus_platform_interface.dart';

class GithubSignInPlus {
  Future<String?> getPlatformVersion() {
    return GithubSignInPlusPlatform.instance.getPlatformVersion();
  }
}
