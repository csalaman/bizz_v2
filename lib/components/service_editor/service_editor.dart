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
  final List<ServiceItem> _services = [
    const ServiceItem(serviceName: 'Clogged Plumbing')
  ];

  @override
  Widget build(BuildContext context) {
    /// Service Editor Header
    Widget _serviceEditorHeader() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomText.regularTextWidget('Services', 22),
          CustomText.subTextWidget('Manage business services', 12)
        ],
      );
    }

    /// Service Editor TextField with Add Action
    Widget _serviceEditorAddWidget() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                hintText: 'Enter service name ...',
                suffixIcon: IconButton(
                  onPressed: () {
                    // FUTURE TODO: Implement adding service callback
                    print('Adding');
                  },
                  icon: const Icon(Icons.add),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.0, color: Colors.grey.shade500),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))))),
      );
    }

    Widget _availableServices() {
      return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6.0,
          ),
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
