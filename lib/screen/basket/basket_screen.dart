import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});
  static const String routeName = '/basket';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const BasketScreen(),
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
