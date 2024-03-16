import "package:flutter/material.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "home_view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home")
          ]
        )
      )
    );
  }
}