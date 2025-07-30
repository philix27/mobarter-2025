import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

roundShimmerImg(BuildContext context) {
  return Shimmer(
    duration: Duration(seconds: 2), //Default value
    interval: Duration(seconds: 1), //Default value: Duration(seconds: 0)
    color: Theme.of(context).cardColor, //Default value
    colorOpacity: 0, //Default value
    enabled: true, //Default value
    direction: ShimmerDirection.fromLTRB(), //Default Value
    child: Container(color: Theme.of(context).cardColor),
  );
}
