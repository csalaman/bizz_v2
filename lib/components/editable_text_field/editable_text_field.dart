import 'package:flutter/material.dart';

import '../../custom_text.dart';

class DisplayTextField extends StatelessWidget {
  final String textFieldTitle;
  String content;

  DisplayTextField(
      {Key? key, required this.textFieldTitle, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => _EditableTextField()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                CustomText.regularTextWidget(textFieldTitle, 22),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.edit_outlined,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: CustomText.subTextWidget(content, 24),
            ),
          ],
        ),
      ),
    );
  }
}

class _EditableTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<_EditableTextField> {
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
          children: [CustomText.regularTextWidget('Title', 24)],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Text('Hello wolrd')],
        ),
      ),
    );
  }
}
