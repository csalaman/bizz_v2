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
  bool _isAddEnabled = false;

  processAddedService(String serviceName) {
    if (serviceName != '') {
      setState(() {
        _services.add(ServiceItem(serviceName: serviceName));
        _services.sort((x, y) => x.serviceName.compareTo(y.serviceName));
        _services.sort((x, y) => x.serviceName.length - y.serviceName.length);
        _controller.clear();
        _isAddEnabled = false;
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
          CustomText.regularTextWidget('Available Services', 22),
          CustomText.subTextWidget('Manage Business Services', 12)
        ],
      );
    }

    /// Service Editor TextField with Add Action
    Widget _serviceEditorAddWidget() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: TextField(
            controller: _controller,
            textInputAction: TextInputAction.go,
            onSubmitted: processAddedService,
            onChanged: (input) {
              setState(() {
                if (input.isNotEmpty) {
                  _isAddEnabled = true;
                } else {
                  _isAddEnabled = false;
                }
              });
            },
            decoration: InputDecoration(
                hintStyle: CustomText.hintTextStyle(),
                hintText: 'Enter a service name...',
                suffixIcon: IconButton(
                  onPressed: !_isAddEnabled
                      ? null
                      : () {
                          var serviceName = _controller.text;
                          processAddedService(serviceName);
                          FocusScope.of(context).unfocus();
                        },
                  icon: Icon(
                    Icons.add,
                    color: _isAddEnabled ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.0, color: Colors.grey.shade500),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.grey.shade500),
                ))),
      );
    }

    Widget _availableServices() {
      if (_services.isEmpty) {
        return Center(
          child: CustomText.subTextWidget(
              'Start by adding the available services for your business', 12),
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText.subTextWidget(
                  'Add/Edit/Update Available Services', 12),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              spacing: 5.0,
              children: _services.map((e) => e).toList(),
            )
          ],
        );
      }
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
