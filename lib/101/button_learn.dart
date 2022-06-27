import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text('Bas')),
          ElevatedButton(onPressed: null, child: const Text('Bas')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.abc_outlined),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(10),
                shape: const CircleBorder()),
            onPressed: () {},
            child: const Text('data'),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc_sharp),
              label: const Text('data')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 20, left: 40),
                child: Text('Place bid',
                    style: Theme.of(context).textTheme.headline5),
              ))
        ],
      ),
    );
  }
}
//Borders
//CircleBorder(),RoundedRectangleBorder()
