import 'package:flutter/services.dart';
import 'package:onboarding_screen/utils/services/state_management_service.dart';
import 'package:onboarding_screen/values/config/app_exports.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(const ProviderWidget()),
  );
}

class ProviderWidget extends StatelessWidget {
  const ProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => AppState()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: OnboardingStrings.appName,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorState,
      initialRoute: NavigationServices.onboarding,
      onGenerateRoute: NavigationServices.onGenerateRoute,
    );
  }
}
