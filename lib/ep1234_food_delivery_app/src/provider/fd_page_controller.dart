import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fdHomeBannerPageController = Provider((ref) => PageController());
final currentIndexPage = StateProvider((ref) => 0);