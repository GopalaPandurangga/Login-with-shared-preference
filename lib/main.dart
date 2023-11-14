import 'package:slicing_ui2_login/core.dart';
import 'package:flutter/material.dart';

//! instagram
//! @suss.tain

//? source code
//? on my GitHub

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: AuthService.currentUser != null
          ? const DashboardView()
          : const SplasherView(),
    );
  }
}
