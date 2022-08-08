import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1237_job_finder_app/src/ui/job_finder_start_page.dart';

class JobFinderApp extends StatelessWidget {
  const JobFinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JobFinderStartPage()s,
    );
  }
}
