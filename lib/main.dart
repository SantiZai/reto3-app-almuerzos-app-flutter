import 'package:flutter/material.dart';
import 'package:myapp/ui/views/first_view.dart';
import 'package:myapp/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Breakfast orders",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: FirstView.id,
      routes: customRoutes,
    );
  }
}
