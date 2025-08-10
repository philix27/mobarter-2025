import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart' as load;

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height ?? 50,
        child: load.LoadingIndicator(
          indicatorType: load.Indicator.ballRotateChase,

          /// Required, The loading type of the widget
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).splashColor,
          ],

          /// Optional, The color collections
          strokeWidth: 1,

          /// Optional, The stroke of the line, only applicable to widget which contains line
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,

          /// Optional, Background of the widget
          pathBackgroundColor: Theme.of(context).scaffoldBackgroundColor,

          /// Optional, the stroke backgroundColor
        ),
      ),
    );
  }
}
