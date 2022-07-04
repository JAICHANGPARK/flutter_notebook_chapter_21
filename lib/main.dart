import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/health_care_mobile_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: HealthcareMobileApp(),
    ),
  );
}
