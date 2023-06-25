import 'package:calc_soft/pessoal_register_page.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'access_register_page.dart';
import 'forgot_password_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.green,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/register': (context) => AccessRegisterPage(),
            '/pessoal': (context) => PessoalPage(),
            '/forgotPassword': (context) => ForgotPasswordPage(),
          },
        );
      },
    );
  }
}
