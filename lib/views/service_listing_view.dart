import 'package:bizz_v2/components/service_area_editor/service_area_editor.dart';
import 'package:bizz_v2/components/service_editor/service_editor.dart';
import 'package:bizz_v2/custom_text.dart';
import 'package:flutter/material.dart';

class ServiceListingView extends StatefulWidget {
  const ServiceListingView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceListingViewState();
}

class _ServiceListingViewState extends State<ServiceListingView> {
  SizedBox verticalSpacer = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /**
               * Service Listings Header
               */
              // verticalSpacer,
              // CustomText.primaryTextWidget('Service Listings'),
              // CustomText.subTwoTextWidget(
              //     'Manage service listings for your business'),
              /**
               * Service Area Editor
               */
              // verticalSpacer,
              // const ServiceAreaEditor(),
              //   ServiceAreaEditor(headerTitle: 'Service Area'),
              /**
               * Service Editor
               */
              verticalSpacer,
              const ServiceEditor()
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.primaryTextWidget('Service Listings'),
            CustomText.subTwoTextWidget(
                'Manage service listings for your business'),
          ],
        ),
      ),
    );
  }
}
