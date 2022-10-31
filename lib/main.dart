import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';
import 'package:loginpage/theme/app_theme.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
  )
);

