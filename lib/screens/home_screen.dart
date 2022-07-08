import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(
            AppRoutes.menuOption[i].iconData,
          ),
          title: Text(
            AppRoutes.menuOption[i].name,
          ),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOption[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOption.length,
      ),
    );
  }
}
