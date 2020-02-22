import 'package:flutter/material.dart';
import 'package:flutter_star/flutter_star.dart';



class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      children: <Widget>[
        StarWidget(
          star: Star(progress: 0.1),
        ),
        StarWidget(
          star: Star(progress: 0.2),
        ),
        StarWidget(
          star: Star(progress: 0.3),
        ),
        StarWidget(
          star: Star(progress: 0.4),
        ),
        StarWidget(
          star: Star(progress: 0.5),
        ),
        StarWidget(
          star: Star(progress: 0.6),
        ),
        StarWidget(
          star: Star(progress: 0.7),
        ),
        StarWidget(
          star: Star(progress: 0.8),
        ),
        StarWidget(
          star: Star(progress: 0.9),
        ),
        StarWidget(
          star: Star(progress: 10.0),
        ),
        Row(
          children: <Widget>[
            StarWidget(
              star: Star(num: 4, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 5, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 6, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 7, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 8, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 9, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 10, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 11, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 12, progress: 1.0),
            ),
            StarWidget(
              star: Star(num: 13, progress: 1.0),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            StarWidget(
              star: Star(
                  num: 5,
                  progress: 0.7,
                  fillColor: Colors.yellow,
                  emptyColor: Colors.grey.withAlpha(88)),
            ),
            StarWidget(
                star: Star(
                    num: 6,
                    progress: 0.6,
                    fillColor: Colors.green,
                    emptyColor: Colors.grey.withAlpha(88))),
            StarWidget(
                star: Star(
                    num: 7,
                    progress: 0.5,
                    fillColor: Colors.orangeAccent,
                    emptyColor: Colors.grey.withAlpha(88))),
            StarWidget(
                star: Star(
                    num: 8,
                    progress: 0.4,
                    fillColor: Colors.black,
                    emptyColor: Colors.grey.withAlpha(88))),
            StarWidget(
                star: Star(
                    num: 12,
                    fat: 0.8,
                    progress: 0.7,
                    fillColor: Colors.purple,
                    emptyColor: Colors.grey.withAlpha(88))),
            StarWidget(
              star: Star(
                  num: 5,
                  fat: 0.7,
                  progress: 0.7,
                  fillColor: Colors.tealAccent,
                  emptyColor: Colors.grey.withAlpha(88)),
            ),
            StarWidget(
                star: Star(
                    num: 6,
                    fat: 0.7,
                    progress: 0.6,
                    fillColor: Colors.cyan,
                    emptyColor: Colors.grey.withAlpha(88))),
            StarWidget(
                star: Star(
                    num: 7,
                    fat: 0.9,
                    progress: 0.5,
                    fillColor: Colors.deepOrange,
                    emptyColor: Colors.grey.withAlpha(88))),
          ],
        ),
        Row(
          children: <Widget>[
            StarScore(
              score: 4.8,
              star: Star(
                  fillColor: Colors.tealAccent,
                  emptyColor: Colors.grey.withAlpha(88)),
            )
          ],
        ),
        Row(
          children: <Widget>[
            StarScore(
              score: 5.4,
              star: Star(
                  fillColor: Colors.yellow,
                  emptyColor: Colors.grey.withAlpha(88)),
            )
          ],
        ),
        Row(
          children: <Widget>[
            StarWidget(
              star: Star(fat: 0.1, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.2, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.3, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.4, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.5, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.6, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.7, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.8, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 0.9, progress: 1.0),
            ),
            StarWidget(
              star: Star(fat: 1.0, progress: 1.0),
            ),
          ],
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.1),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.2),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.3),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.4),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.5),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.6),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.7),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.8),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 0.9),
        ),
        StarWidget(
          star: Star(num: 8, fat: 0.7, progress: 10.0),
        ),
      ],
    );
  }
}
