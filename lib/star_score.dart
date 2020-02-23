import 'package:flutter/material.dart';
import 'package:flutter_star/star.dart';

class StarScore extends StatelessWidget {
  final Star star;
  final double score;
  final Widget tail;

  StarScore({this.star = const Star(), this.score, this.tail});

  @override
  Widget build(BuildContext context) {
    var li = <StarWidget>[];
    int count = score.floor();
    for (int i = 0; i < count; i++) {
      li.add(StarWidget(star: star.copyWith(progress: 1.0)));
    }
    if (score - count > 0) {
      li.add(StarWidget(star: star.copyWith(progress: score - count)));
    }
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...li,
        SizedBox(
          width: 10,
        ),
        if (tail!=null) tail
      ],
    );
  }
}