import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/ui/health_care_home_page.dart';

class HealthcareMobileApp extends StatelessWidget {
  const HealthcareMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HealthCareHomePage(),
      },
    );
  }
}
