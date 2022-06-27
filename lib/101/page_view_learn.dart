import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: const EdgeInsets.only(left: 20), child: Text(_currentPageIndex.toString())),
            Spacer(),
            FloatingActionButton(
                onPressed: () {
                  _pageController.previousPage(duration: _DurationUtiliy._durationLow, curve: Curves.slowMiddle);
                },
                child: const Icon(Icons.chevron_left)),
            FloatingActionButton(
                onPressed: () {
                  _pageController.nextPage(duration: Duration(seconds: 1), curve: _CurveUtility._curvesUtility);
                },
                child: const Icon(Icons.chevron_right)),
          ],
        ),
        appBar: AppBar(),
        body: PageView(
          padEnds: false,
          controller: _pageController,
          onPageChanged: _updatePageIndex,
          children: [const ImageLearnView(), IconLearnView(), const StatefullLearn()],
        ));
  }
}

class _DurationUtiliy {
  static const _durationLow = Duration(seconds: 1);
}

class _CurveUtility {
  static const _curvesUtility = Curves.slowMiddle;
}
