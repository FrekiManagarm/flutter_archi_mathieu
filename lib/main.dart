import 'package:flutter/material.dart';
import 'package:flutter_custom_archi/core/app_export.dart';
import 'package:flutter_custom_archi/routes/app_routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Custom Archi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppRoutes.router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
