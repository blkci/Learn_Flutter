/*bir ekran olacak 
Bu ekranda 3 buton olacak ve bunlara basınca renk değişimi olacak
Seçili olan buton selected icon olsun. */
import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialColor != _backgroundColor) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: _onTapColors, items: [
        BottomNavigationBarItem(icon: _ColorsContainer(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(icon: _ColorsContainer(color: Colors.yellow), label: 'Yellow'),
        BottomNavigationBarItem(icon: _ColorsContainer(color: Colors.blue), label: 'Blue'),
      ]),
    );
  }

  void _onTapColors(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorsContainer extends StatelessWidget {
  const _ColorsContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
