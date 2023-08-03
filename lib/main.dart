
import 'package:exam/core/const/constants.dart';
import 'package:exam/data/local_storage.dart';
import 'package:exam/routes/apppages.dart';
import 'package:exam/routes/approutes.dart';
import 'package:exam/screens/main/auth/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  StorageRepository.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      routes: AppPages.routes,

    );
  }
}