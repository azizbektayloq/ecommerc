import 'package:flutter/material.dart';

import '../resources/appStyles.dart';
import '../resources/app_colors.dart';

class WBrandName extends StatelessWidget {
  final double fontSize;

  const WBrandName({super.key, this.fontSize = 38});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Swip",
        children: [
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                print("Salom");
              },
              child: Text(
                'wide',
                style: Styles.getLogoTextStyle()
                    .copyWith(color: AppColors.black, fontSize: fontSize),
              ),
            ),
          ),
        ],
        style: Styles.getLogoTextStyle().copyWith(fontSize: fontSize),
      ),
    );
  }
}
