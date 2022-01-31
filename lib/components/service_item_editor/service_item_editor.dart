import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceItemEditor extends StatefulWidget {
  const ServiceItemEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceItemEditorState();
}

class _ServiceItemEditorState extends State<ServiceItemEditor> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [

            ],
          ),
        ),
      ),
    );
  }
}
