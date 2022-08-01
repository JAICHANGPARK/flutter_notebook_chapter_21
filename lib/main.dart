import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/banking_app.dart';
import 'package:flutter_notebook_chapter_21/ep1230_classes_app/classes_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: ClassesMobileApp(),
    ),
  );
}
