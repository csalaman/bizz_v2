import 'package:flutter/material.dart';

import '../../custom_text.dart';

class RevenueHeader extends StatelessWidget {
  SizedBox verticalSpacer = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.longestSide * 1/4;

    Widget _dayRevenue = Column(
      children: [
        CustomText.regularTextWidget('Today\'s Revenue', 12),
        CustomText.regularTextWidget('\$357.04', 40),
      ],
    );

    Widget _weekRevenue = Column(
      children: [
        CustomText.regularTextWidget('This Week', 12),
        CustomText.regularTextWidget('\$557.04', 14),
      ],
    );

    Widget _monthRevenue = Column(
      children: [
        CustomText.regularTextWidget('This Month', 12),
        CustomText.regularTextWidget('\$557.04', 14),
      ],
    );

    return Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: _dayRevenue,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _weekRevenue,
            _monthRevenue
          ],
        )
      ],
    );
  }
}
