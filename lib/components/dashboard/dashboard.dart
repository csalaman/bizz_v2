import 'package:bizz_v2/components/revenue_header/revenue_header.dart';
import 'package:bizz_v2/custom_text.dart';
import 'package:bizz_v2/views/service_listing_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final SizedBox _verticalSpacer = const SizedBox(
    height: 30,
  );

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _dashboardActions = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: CustomText.regularTextWidget('Bookings', 20),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: CustomText.regularTextWidget('Orders', 20),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: CustomText.regularTextWidget('Service Listings', 20),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ServiceListingView()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: CustomText.regularTextWidget('Product Inventory', 20),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: const Icon(Icons.analytics_outlined),
            title: CustomText.regularTextWidget('Statistics', 20),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /**
             * Dashboard Revenue Header
             */
            _verticalSpacer,
            RevenueHeader(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Divider(color: Colors.grey,),
            ),
            /**
             * Dashboard Actions
             *  - Bookings
             *  - Orders
             *  - Manage Services
             *  - Manage Products
             *  - Business Statistics
             */
            _verticalSpacer,
            _dashboardActions
          ],
        ),
      ),
    );
  }
}
