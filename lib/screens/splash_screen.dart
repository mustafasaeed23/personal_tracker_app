import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_expense_tracker/managers/styles_manager.dart';
import 'package:personal_expense_tracker/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Lottie.asset("assets/animations/Animation - 1719195128635.json")),
          SizedBox(height: 30.h,),
          Text("Manage Your daily \n life expenses",
          style: getBoldBlack18Style(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60.h,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            child: Container(
              width: 320.w,
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.blue,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10
                  ),
                ]
              ),
              child: Center(
                child: Text("Get Started",
                style: getBoldWhite25Style(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
