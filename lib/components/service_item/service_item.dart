import 'package:bizz_v2/components/editable_text_field/editable_text_field.dart';
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

class _EditServicePage extends StatefulWidget {
  final String serviceName;
  const _EditServicePage({Key? key, required this.serviceName})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditServicePageState();
}

class _EditServicePageState extends State<_EditServicePage> {
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomText.regularTextWidget('Service Editor', 24)],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Builder(
            builder: (context) => Form(
                key: _formKey,
                child: Column(
                  children: [
                    DisplayTextField(textFieldTitle: 'Title', content: widget.serviceName),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     label: CustomText.regularTextWidget('Title', 20),
                    //   ),
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     label: CustomText.regularTextWidget('Description', 20),
                    //   ),
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     label: CustomText.regularTextWidget('Cost', 20),
                    //   ),
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(label: CustomText.regularTextWidget('Deposit', 20), ),
                    // ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
