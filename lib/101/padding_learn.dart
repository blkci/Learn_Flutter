import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Padding(
                  padding: ProjectPadding.pagePaddingOnlyRight +
                      ProjectPadding.pagePaddingVertical,
                  child: const Text('ali')),
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingOnlyRight = EdgeInsets.only(right: 20);
}
