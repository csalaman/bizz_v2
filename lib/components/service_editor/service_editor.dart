import 'package:bizz_v2/components/service_item/service_item.dart';
import 'package:flutter/material.dart';

import '../../custom_text.dart';

class ServiceEditor extends StatefulWidget {
  const ServiceEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceEditorState();
}

// FUTURE TODO:
class _ServiceEditorState extends State<ServiceEditor> {
  final TextEditingController _controller = TextEditingController();
  final List<ServiceItem> _services = [];

  processAddedService(String serviceName) {
    if (serviceName != '') {
      setState(() {
        _services.add(ServiceItem(serviceName: serviceName));
        _services.sort((x, y) => x.serviceName.compareTo(y.serviceName));
        _services.sort((x, y) => x.serviceName.length - y.serviceName.length);
        _controller.clear();
      });
    }
  }

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
            textInputAction: TextInputAction.go,
            onSubmitted: processAddedService,
            decoration: InputDecoration(
                hintText: 'Enter service name ...',
                suffixIcon: IconButton(
                  onPressed: () {
                    var serviceName = _controller.text;
                    processAddedService(serviceName);
                    FocusScope.of(context).unfocus();
                  },
                  icon: const Icon(Icons.add),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.0, color: Colors.grey.shade500),
                    borderRadius: const BorderRadius.all(Radius.circular(0.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(0.0))))),
      );
    }

    Widget _availableServices() {
      return Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        spacing: 5.0,
        children: _services.map((e) => e).toList(),
      );
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
