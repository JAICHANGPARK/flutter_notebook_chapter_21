import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/health_care_style.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/model/hc_menu.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/menu_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthCareBottomMenuWidget extends StatefulWidget {
  const HealthCareBottomMenuWidget({Key? key}) : super(key: key);

  @override
  State<HealthCareBottomMenuWidget> createState() => _HealthCareBottomMenuWidgetState();
}

class _HealthCareBottomMenuWidgetState extends State<HealthCareBottomMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Consumer(builder: (context, ref, _) {
          final index = ref.watch(hcMenuIndexProvider);
          return Row(
            children: bottomMenuItems
                .map(
                  (e) => Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 3,
                          color: index == e.index ? healthCarePrimaryColor : Colors.transparent,
                        ),
                        IconButton(
                          onPressed: () {
                            ref.read(hcMenuIndexProvider.notifier).state = e.index ?? 0;
                          },
                          icon: e.iconWidget ?? Icon(Icons.home),
                          iconSize: 32,
                          color: index == e.index ? healthCarePrimaryColor : Colors.grey,
                        ),
                        Text(
                          e.title ?? "?",
                          style: TextStyle(
                            color: index == e.index ? healthCarePrimaryColor : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
