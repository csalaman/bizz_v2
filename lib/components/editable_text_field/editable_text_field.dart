import 'package:flutter/material.dart';

import '../../custom_text.dart';

class DisplayTextField extends StatelessWidget {
  final String textFieldTitle;
  String content;

  DisplayTextField({Key? key, required this.textFieldTitle, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            CustomText.regularTextWidget(textFieldTitle, 22),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.edit,
                color: Colors.grey,
              ),
            )
          ],
        ),
        CustomText.subTwoTextWidget(content),
      ],
    );
  }
}

class EditableTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<EditableTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
