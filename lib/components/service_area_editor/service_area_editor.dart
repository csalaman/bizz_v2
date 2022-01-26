import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceAreaEditor extends StatefulWidget {
  const ServiceAreaEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceAreaEditorState();
}

// FUTURE TODO: Implement Service Area Editor
class _ServiceAreaEditorState extends State<ServiceAreaEditor> {
  @override
  Widget build(BuildContext context) {
    /// Widget to display service area header and edit icon
    Widget _serviceAreaHeader() {
      return Row(
        children: <Widget>[
          CustomText.regularTextWidget('Service Area', 22),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          )
        ],
      );
    }

    Widget _serviceAreaContent() {
      return Row(
        children: <Widget>[],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /**
         * Service Area Editor Header
         */
        _serviceAreaHeader(),
        /**
         * Service Area Editor Content
         */
        _serviceAreaContent(),
      ],
    );
  }
}
