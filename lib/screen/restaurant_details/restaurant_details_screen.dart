import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});
  static const String routeName = '/restauranta_details';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const RestaurantDetailsScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            child: const Text('Location Screen')),
      ),
    );
  }
}
