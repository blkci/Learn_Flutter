import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final String iconLearn = 'Icon Learn';
  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(iconLearn)),
        body: Column(
          children: [
            //Klasik kullanım
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message_outlined,
                    color: Colors.red, size: 40)),
            //Buton boyutunu bir classtan direkt olarak almak
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.message_outlined,
                    color: Colors.red, size: IconSizes().iconSmall)),
            //Class tipinde bir değişken oluşturup size'ı ve color'ı oradan almak
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.message_outlined,
                    color: iconColors.froly, size: iconSizes.iconSmall)),
          ],
        ));
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
