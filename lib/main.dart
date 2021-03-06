import 'package:bizz_v2/components/dashboard/dashboard.dart';
import 'package:bizz_v2/views/service_listing_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ServiceListingView(),
      home: const Dashboard(),
    );
  }
}
