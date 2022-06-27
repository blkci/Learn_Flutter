import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'Veli';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Buton
          TextButton(onPressed: () {}, child: const Text('Buraya tıkla')),
          //Text'in klasik kullanımı.
          Text(('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  wordSpacing: 3,
                  letterSpacing: 2,
                  fontSize: 16,
                  decoration: TextDecoration.overline,
                  fontStyle: FontStyle.italic,
                  color: Colors.lime,
                  fontWeight: FontWeight.w600)),
          //TextStyle kısmını özel bir class içinde tanımlayıp kullandık.
          Text(('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyle.welcomeStyle),
          //TextStyle kısmını hazır bir componenttan aldık.
          Text(('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          //Anahtar kelime veya cümleleri bir sınıf içerisinde toplayıp bu şekilde yazdırmak doğru kullanımdır.
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 3,
      letterSpacing: 2,
      fontSize: 16,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
