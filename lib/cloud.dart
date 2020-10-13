import 'dart:ui';

import 'package:dino_game/constants.dart';
import 'package:flutter/widgets.dart';

import 'game-object.dart';
import 'sprite.dart';

Sprite cloud = Sprite()
  ..imagePath = "assets/images/cloud.png"
  ..imageHeight = 27
  ..imageWidth = 92;

class Cloud extends GameObject {
  // this is a logical location which is translated to pixel coordinates
  final Offset location;

  Cloud({this.location});

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
        (location.dx - runDistance) * WORLD_TO_PIXEL_RATIO / 5,
        2 / 7 * screenSize.height - cloud.imageHeight - location.dy,
        cloud.imageWidth.toDouble(),
        cloud.imageHeight.toDouble());
  }

  @override
  Widget render() {
    return Image.asset(
      cloud.imagePath,
    );
  }
}
