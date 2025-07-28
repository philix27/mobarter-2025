import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/intro/btn.dart';
import 'package:mobarter/features/intro/display_version_no.dart';
import 'package:mobarter/utils/size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  final Color pageColor;
  final String imagePath;
  final String title;
  final String subtitle;
  final int activeIndex;
  final Widget? button;
  const IntroScreen({
    super.key,
    required this.pageColor,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.activeIndex,
    this.button,
  });

  Widget getButton() {
    if (button == null) return ConnectionButton();
    if (button != null) return button!;
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      padding: EdgeInsets.all(20),
      width: getW(context, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(height: getH(context, 0.35), image: AssetImage(imagePath)),
          button == null
              ? AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 2,
                  effect: WormEffect(
                    activeDotColor: colorPrimary,
                    dotColor: Colors.grey.shade400,
                    // dotColor: Colors.white,
                    dotHeight: 12,
                    dotWidth: 12,
                  ),
                )
              : SizedBox.shrink(),
          SizedBox(
            width: getW(context, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(height: 30),
                getButton(),
              ],
            ),
          ),
          DisplayAppVersion(),
        ],
      ),
    );
  }
}
