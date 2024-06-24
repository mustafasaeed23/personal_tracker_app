import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker/my_theme.dart';
import 'package:personal_expense_tracker/screens/home_screen.dart';
import 'package:personal_expense_tracker/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    useInheritedMediaQuery: true,
    builder: (context, child) =>  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      routes: {
        SplashScreen.routeName:(context)=> const SplashScreen(),
        HomeScreen.routeName:(context) => const HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyTheme.lightTheme,
    ),
    );
  }
}

