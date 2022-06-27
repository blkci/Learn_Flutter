import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _backgroundColor = Colors.pink;
                  });
                },
                icon: Icon(Icons.clear))
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            Expanded(
              child: ColorDemos(
                initialColor: _backgroundColor,
              ),
            )
          ],
        ));
  }
}
