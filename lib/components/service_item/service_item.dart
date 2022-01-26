import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceItem extends StatelessWidget {
  final String serviceName;
  const ServiceItem({Key? key, required this.serviceName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomText.regularTextWidget('Dehydration Treatment', 14),
            const Icon(
              Icons.edit_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
