import 'package:flutter/material.dart';

import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/fashinex_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: FashinexApp(),
    ),
  );
}
