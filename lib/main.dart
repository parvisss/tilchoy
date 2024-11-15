import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tilchoy/core/utils/app_router.dart';

void main() => runApp(
      ScreenUtilInit(
        designSize: const Size(300, 800),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter().router,
        ),
      ),
    );
