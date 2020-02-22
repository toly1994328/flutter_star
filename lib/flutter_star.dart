library flutter_star;

import 'dart:math';
import 'package:flutter/material.dart';

class StarScore extends StatelessWidget {
  final Star star;
  final double score;
  final bool show;

  StarScore({this.star = const Star(), this.score, this.show = true});

  @override
  Widget build(BuildContext context) {
    var li = <StarWidget>[];
    int count = score.floor();
    for (int i = 0; i < count; i++) {
      li.add(StarWidget(
          star: Star(
              progress: 1.0,
              fat: star.fat,
              fillColor: star.fillColor,
              emptyColor: star.emptyColor,
              num: star.num,
              size: star.size)));
    }
    li.add(StarWidget(
        star: Star(
            progress: score - count,
            fat: star.fat,
            fillColor: star.fillColor,
            emptyColor: star.emptyColor,
            num: star.num,
            size: star.size)));
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...li,
        SizedBox(
          width: 10,
        ),
        if (show)
          Column(
            children: <Widget>[
              Text("综合评分"),
              Text("$score"),
            ],
          )
      ],
    );
  }
}

class Star {
  final int num;
  final double progress;
  final Color emptyColor;
  final Color fillColor;
  final double size;
  final double fat;

  const Star(
      {this.progress = 0,
      this.fat = 0.5,
      this.fillColor = Colors.blue,
      this.emptyColor = Colors.grey,
      this.num = 5,
      this.size = 40});
}

class StarWidget extends StatelessWidget {
  final Star star;

  StarWidget({this.star = const Star()});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: star.size,
      height: star.size,
      child: CustomPaint(
        painter: _StarPainter(star),
      ),
    );
  }
}

class _StarPainter extends CustomPainter {
  Star star;
  Paint _paint;
  Paint _filePaint;
  Path _path;
  double _radius;

  _StarPainter(this.star) {
    _paint = Paint()
      ..color = (star.emptyColor)
      ..isAntiAlias = true;

    _filePaint = Paint()..color = (star.fillColor);
    _path = Path();
    _radius = star.size / 2.0;
    nStarPath(star.num, _radius, _radius * star.fat);
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(_radius, _radius);
    canvas.drawPath(_path, _paint);
    canvas.clipRect(Rect.fromLTRB(
        -_radius, -_radius, _radius * 2 * star.progress - _radius, _radius));
    canvas.drawPath(_path, _filePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  Path nStarPath(int num, double R, double r, {dx = 0, dy = 0, rotate = 0}) {
    _path.reset(); //重置路径
    double perRad = 2 * pi / num; //每份的角度
    double radA = perRad / 2 / 2 + rotate; //a角
    double radB = 2 * pi / (num - 1) / 2 - radA / 2 + radA + rotate; //起始b角
    _path.moveTo(cos(radA) * R + dx, -sin(radA) * R + dy); //移动到起点
    for (int i = 0; i < num; i++) {
      //循环生成点，路径连至
      _path.lineTo(
          cos(radA + perRad * i) * R + dx, -sin(radA + perRad * i) * R + dy);
      _path.lineTo(
          cos(radB + perRad * i) * r + dx, -sin(radB + perRad * i) * r + dy);
    }
    _path.close();
    return _path;
  }
}
