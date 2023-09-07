import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const String routeName = '/filter';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const FilterScreen(),
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
