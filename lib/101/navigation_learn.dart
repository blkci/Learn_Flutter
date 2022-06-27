import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const Placeholder(
          color: Colors.red,
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigation_rounded),
          onPressed: () {
            navigateToWidget(context, const NavigateDetail());
          }),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}
