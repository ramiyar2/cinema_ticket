import 'package:cinema_ticket/screens/onboarding/splash_screen.dart';
import 'package:cinema_ticket/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      //themeMode: ThemeServies().theme
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
