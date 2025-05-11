// lib/app.dart

import 'package:flutter/material.dart';
import 'screens/LandingPage4.dart';
import 'screens/landing_screen.dart';
import 'screens/LandingPage2.dart';
import 'screens/LandingPage3.dart';
import 'screens/LandingPage5.dart';
import 'screens/LandingPage6.dart';
import 'screens/auth/SignInPage.dart';
import 'screens/auth/SignUpPage.dart';
import 'screens/auth/AuthVerificationPage.dart';
// import 'screens/login/email_password_login_screen.dart';
// import 'screens/login/google_login_screen.dart';
// import 'screens/login/facebook_login_screen.dart';
// import 'screens/login/phone_login_screen.dart';
// import 'screens/verify_screen.dart';
// import 'screens/dashboard_screen.dart';
import 'core/themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Health App',
      theme: AppTheme.lightTheme(), // Apply the theme
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        '/landingpage2': (context) => LandingPage2(),
        '/landingpage3': (context) => LandingPage3(),
        '/landingpage4': (context) => LandingPage4(),
        '/landingpage5': (context) => LandingPage5(),
        '/landingpage6': (context) => LandingPage6(),// 👈 Added route
        '/sign_in': (context) => SignInPage(),
        '/sign_up': (context) => SignUpPage(),
        '/verify': (context) => AuthVerificationPage(),
        // '/login/email': (context) => EmailPasswordLoginScreen(),
        // '/login/google': (context) => GoogleLoginScreen(),
        // '/login/facebook': (context) => FacebookLoginScreen(),
        // '/login/phone': (context) => PhoneLoginScreen(),
        // '/verify': (context) => VerifyScreen(),
        // '/dashboard': (context) => DashboardScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
