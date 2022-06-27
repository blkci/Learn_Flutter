import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/text_learn.dart';

import '101/app_bar_learn.dart';
import '101/card_learn.dart';
import '101/column_row_learn.dart';
import '101/container_sized_box_learn.dart';
import '101/custom_widget_leard.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_view_builder_learn.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/scaffold_leart.dart';
import '101/stateful_learn.dart';
import '101/stateful_life_cycle.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import 'MyDemos/MobileBankingApps.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle.dart';
import 'demos/my_collections_demos.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_view_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.red,
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.green)),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.blue),
          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent,
              elevation: 0)),
      home: const MobileBankingInterface(),
    );
  }
}
