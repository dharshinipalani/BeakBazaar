import 'package:bird_shop/firebase_options.dart';
import 'package:bird_shop/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:bird_shop/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:bird_shop/src/repository/auth_repository/authentication_repository.dart';
import 'package:bird_shop/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home:  const SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget{
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Birds'),
        ),
      body: const ProfileScreen(),
    );
  }
}


