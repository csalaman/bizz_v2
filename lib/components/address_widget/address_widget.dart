import 'package:bizz_v2/custom_text.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  final String street;
  final String cityAndState;
  final String zip;

  const AddressWidget(
      {Key? key,
      required this.street,
      required this.cityAndState,
      required this.zip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomText.subTwoTextWidget(street),
        CustomText.subTwoTextWidget(cityAndState),
        CustomText.subTwoTextWidget(zip)
      ],
    );
  }
}
