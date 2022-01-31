import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceItem extends StatelessWidget {
  final String serviceName;
  const ServiceItem({Key? key, required this.serviceName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
        backgroundColor: Colors.grey.shade200,
        avatar: Icon(
          Icons.settings_outlined,
          color: Colors.grey.shade700,
          size: 14,
        ),
        label: CustomText.regularTextWidget(serviceName, 14),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      _EditServicePage(serviceName: serviceName)));
        });
  }
}

class _EditServicePage extends StatelessWidget {
  final String serviceName;
  const _EditServicePage({Key? key, required this.serviceName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Service'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [Text(serviceName)],
          ),
        ),
      ),
    );
  }
}
