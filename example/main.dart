import 'package:flutter/material.dart';
import 'package:flutter_star/flutter_star.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Column(
            children: <Widget>[
              StarWidget(
                star: Star(
                    progress: 0.8, num: 5, fat: 0.6, fillColor: Colors.green),
              ),
              _buildStarScore(),
              _buildCustomRating()
            ],
          ))),
    );
  }

  Widget _buildStarScore() => StarScore(
    score: 4.8,
    star: Star(
        fillColor: Colors.tealAccent,
        emptyColor: Colors.grey.withAlpha(88)),
    tail: Column(
      children: <Widget>[
        Text("综合评分"),
        Text("4.8"),
      ],
    ),
  );

  Widget _buildCustomRating() => Column(
    children: <Widget>[
      CustomRating(onRating: (s) {
        print(s);
      }),
      CustomRating(
          max: 6,
          score: 3.0,
          star: Star(
              num: 12,
              fillColor: Colors.orangeAccent,
              fat: 0.6,
              emptyColor: Colors.grey.withAlpha(88)),
          onRating: (s) {
            print(s);
          }),
    ],
  );
}
