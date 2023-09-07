import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static const String routeName = '/checkout';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const CheckoutScreen(),
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
