import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.red)),
                  Expanded(flex: 4, child: Container(color: Colors.yellow)),
                  Expanded(flex: 4, child: Container(color: Colors.green)),
                  Expanded(flex: 4, child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [Text('a'), Text('a2'), Text('a3')],
              )),
          SizedBox(
              height: ProjectContainerSizes.maxCardHeight,
              child: Column(
                children: const [
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data'))
                ],
              )),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double maxCardHeight = 200;
}
