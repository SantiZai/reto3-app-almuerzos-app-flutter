import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static String id = "login_view";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class Employee {
  static String fullname = "";
  static String identifier = "";
}

class Menu {
  final DateTime createdAt;
  final String name;
  final String position;
  final String type;

  Menu({
    required this.createdAt,
    required this.name,
    required this.position,
    required this.type,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      createdAt: DateTime.parse(json['createdAt']),
      name: json['name'],
      position: json['position'],
      type: json['type'],
    );
  }
}

class _LoginViewState extends State<LoginView> {
  String _fullname = "";
  String _identifier = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Iniciar sesión"),
            // fullname
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.05,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Nombre completo',
                  labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _fullname = value;
                  });
                },
              ),
            ),
            // identifier
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.05,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Número de identificación',
                  labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _identifier = value;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Iniciar sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
