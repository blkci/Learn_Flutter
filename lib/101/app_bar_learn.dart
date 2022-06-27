import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key}) : super(key: key);
  final String title = 'Welcome to learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.chevron_left),
        //actionsIconTheme: const IconThemeData(color: Colors.red, size: 24),
        //toolbarTextStyle: const TextStyle(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_email_unread_sharp)),
          const Center(child: CircularProgressIndicator()),
          //Text(title) //toolbartextstyle buraya etki ediyor.
        ],
      ),
    );
  }
}
