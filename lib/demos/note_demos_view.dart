import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _title = 'Create your first note';
    final _description = 'Add a note. ';
    final _createNote = 'Create a Note';
    final _importNotes = 'Import Notes';
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(
            children: [
              PngImage(name: ImageItems().appleWithBook),
              _TitleWidget(title: _title),
              Padding(
                padding: PaddingItems.verticalPadding,
                child: SubtitleWidget(
                  title: _description * 10,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      height: ButtonHeight.buttonNormalHeight,
                      child: Center(
                          child: Text(
                        _createNote,
                        style: Theme.of(context).textTheme.headline5,
                      )))),
              TextButton(onPressed: () {}, child: Text(_importNotes)),
              const SizedBox(
                height: ButtonHeight.buttonNormalHeight,
              )
            ],
          ),
        ));
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
