import 'package:onboarding_screen/modules/auth/auth_screen.dart';
import 'package:onboarding_screen/modules/onboarding/onboarding_screen.dart';
import 'package:onboarding_screen/modules/root/root_screen.dart';

import '../../modules/settings/settings_screen.dart';
import '../../values/config/app_exports.dart';

class NavigationServices {
  static const onboarding = 'onboarding';
  static const onboardingPath = '/onboarding';
  static const root = 'root';
  static const rootPath = '/';
  static const auth = 'auth';
  static const authPath = '/auth';
  static const settings = 'settings';
  static const settingsPath = '/settings';

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    final name = routeSettings.name;
    final args = routeSettings.arguments;

    switch (name) {
      case (onboarding):
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case (root):
        return MaterialPageRoute(builder: (_) => const RootScreen());
      case (auth):
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case (settings):
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    }
  }
}
