import "package:flutter/material.dart";

class FirstView extends StatelessWidget {
  const FirstView({super.key});
  static String id = "first_view";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.05
              ),
              child: const Text("Principal"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.2,
              ),
              child: ElevatedButton(onPressed: ()=>{}, style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40)), child: const Text("Iniciar sesión")),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.2,
              ),
              child: ElevatedButton(onPressed: ()=>{}, style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40)), child: const Text("Registrarse")),
            ),
          ],
        ),
      ) 
    );
  }
}