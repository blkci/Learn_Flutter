import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'merha',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              padding: EdgeInsets.only(left: 19, right: 20),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          //xxxxxxxxxxxx
          FittedBox(
            child: Text(
              'merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 500,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 500,
                  width: 100,
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)), _listDemo(),
        ],
      ),
    );
  }
}

class _listDemo extends StatefulWidget {
  const _listDemo({Key? key}) : super(key: key);

  @override
  State<_listDemo> createState() => _listDemoState();
}

class _listDemoState extends State<_listDemo> {
  @override
  void initState() {
    super.initState();
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
