import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'app/modules/init/bindings/init_bindings.dart';
import 'app/routes/app_pages.dart';
import 'shared/shared_theme.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

import 'utils/constants_values.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitBinding(),
      title: ConstantsValues.appName,
      theme: SharedTheme.lightTheme,
      darkTheme: SharedTheme.darkTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ms') // Malaysia
      ],
      debugShowCheckedModeBanner: false,
      enableLog: true,
    );
  }
}
