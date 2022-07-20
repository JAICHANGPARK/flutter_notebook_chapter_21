import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_notebook_chapter_21/ep1218_defistop_app/defispot_app.dart';


void main() {
  runApp(
    ProviderScope(
      child: DefispotApp(),
    ),
  );
}
