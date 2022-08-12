import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1237_job_finder_app/job_finder_app.dart';
import 'package:flutter_notebook_chapter_21/ep1241_skyrent_app/skyrent_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: SkylentApp(),
    ),
  );
}
