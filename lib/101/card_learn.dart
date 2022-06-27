import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            //color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          ),
          Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(
                height: 100,
                width: 100,
              )),
          CustomCards(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class CustomCards extends StatelessWidget {
  CustomCards({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,

      //color: Colors.white,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
