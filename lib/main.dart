import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1244_skin_care_app/skin_care_app.dart';
import 'package:flutter_notebook_chapter_21/ep1247_art_exhibition_app/art_exhibition_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: ArtExhibitionApp(),
    ),
  );
}
