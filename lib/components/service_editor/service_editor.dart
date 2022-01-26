import 'package:bizz_v2/components/service_item/service_item.dart';
import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceEditor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ServiceEditorState();
}

// FUTURE TODO:
class _ServiceEditorState extends State<ServiceEditor> {
  final TextEditingController _controller = TextEditingController();
  List<ServiceItem> _services = [ServiceItem(serviceName: 'Clogged Plumbing')];

  @override
  Widget build(BuildContext context) {
    /// Service Editor Header
    Widget _serviceEditorHeader() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomText.regularTextWidget('Services', 22),
          CustomText.subTwoTextWidget('Manage business services')
        ],
      );
    }

    /// Service Editor TextField with Add Action
    Widget _serviceEditorAddWidget() {
      return TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Enter a service name',
          suffixIcon: IconButton(
            onPressed: () {
              // FUTURE TODO: Implement adding service callback
              print('Adding');
            },
            icon: const Icon(Icons.add),
          ),
        ),
      );
    }

    Widget _availableServices() {
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
          child: ServiceItem(serviceName: 'Clogged Plumbing'));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _serviceEditorHeader(),
        _serviceEditorAddWidget(),
        _availableServices()
      ],
    );
  }
}
