import 'package:flutter/material.dart';
import 'package:flutter_star/star.dart';

  class CustomRating extends StatefulWidget {
  final int max;
  final Star star;
  final double score;
  final Function(double) onRating;

  CustomRating(
      {this.max = 5,
      this.score = 0,
      this.star = const Star(),
      @required this.onRating})
      : assert(score <= max);

  @override
  _CustomRatingState createState() => _CustomRatingState();
}

class _CustomRatingState extends State<CustomRating> {
  double _score;

  @override
  void initState() {
    _score = widget.score;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var li = <StarWidget>[];

    int count = _score.floor(); //满星
    for (int i = 0; i < count; i++) {
      li.add(StarWidget(star: widget.star.copyWith(progress: 1.0)));
    }

    if (_score != widget.max.toDouble())
      li.add(StarWidget(
          star: widget.star.copyWith(progress: _score - count))); //不满星

    var empty = widget.max - count - 1; // 空星
    for (int i = 0; i < empty; i++) {
      li.add(StarWidget(star: widget.star.copyWith(progress: 0)));
    }
    return GestureDetector(
      onTapDown: (d) {
        setState(() {
          _score = d.localPosition.dx / widget.star.size;
          if (_score - _score.floor() > 0.5) {
            _score = _score.floor() + 1.0;
          } else {
            _score = _score.floor() + 0.5;
          }

          if (_score >= widget.max.toDouble()) {
            _score = widget.max.toDouble();
          }
          widget.onRating(_score);
        });
      },
      child: Wrap(
        children: li,
      ),
    );
  }
}
