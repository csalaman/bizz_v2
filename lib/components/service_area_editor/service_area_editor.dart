import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceAreaEditor extends StatefulWidget {
  final String headerTitle;
  const ServiceAreaEditor({Key? key, required this.headerTitle}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceAreaEditorState();
}

class _ServiceAreaEditorState extends State<ServiceAreaEditor> {
  final Color _iconColor = Colors.grey;
  final List<String> areas = ['A', 'B', 'C', 'D', 'E', 'F'];

  @override
  Widget build(BuildContext context) {
    /// Edit Header
    Widget _editHeader() {
      return Row(
        children: <Widget>[
          CustomText.regularTextWidget(widget.headerTitle, 22),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.edit,
              color: _iconColor,
            ),
          )
        ],
      );
    }

    /// Service Areas Content Display
    Widget _serviceAreasContent() {
      if (areas.isEmpty) {
        return CustomText.subTextWidget(
            'No service areas currently listed', 12);
      } else {
        return Wrap(
          children: areas.map((e) => Chip(label: Text(e))).toList(),
        );
        return CustomText.subTextWidget('Some elements', 12);
      }
    }

    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_editHeader(), _serviceAreasContent()],
      ),
      onTap: () {
        print('Open Editor');
      },
    );
  }
}
