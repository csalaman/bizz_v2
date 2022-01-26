import 'package:bizz_v2/components/address_widget/address_widget.dart';
import 'package:bizz_v2/custom_text.dart';
import 'package:flutter/material.dart';

class AddressEditor extends StatefulWidget {
  const AddressEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddressEditorState();
}

class _AddressEditorState extends State<AddressEditor> {
  final Color _iconColor = Colors.grey;
  String currentAddress = '19100 Willow Spring Dr, Germantown, MD 20874';

  @override
  Widget build(BuildContext context) {
    /// Widget to display address header and edit icon
    Widget _addressHeader() {
      return Row(
        children: <Widget>[
          CustomText.regularTextWidget('Address', 24),
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

    Widget _addressContent() {
      // return CustomText.subTwoTextWidget('Add your business address.');
      return const Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: AddressWidget(
            street: '19100 Willow Spring Dr',
            cityAndState: 'Germantown, MD',
            zip: '20874'),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /**
         * Address Editor Header
         */
        _addressHeader(),
        /**
         * Address Editor Content
         */
        _addressContent()
      ],
    );
  }
}
