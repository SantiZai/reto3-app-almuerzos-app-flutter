import "package:flutter/material.dart";
import "../ui/views/first_view.dart";
import "../ui/views/login_view.dart";
import "../ui/views/register_view.dart";
import "../ui/views/home_view.dart";

var customRoutes = <String, WidgetBuilder>{
  FirstView.id: (_) => const FirstView(),
  LoginView.id: (_) => const LoginView(),
  RegisterView.id: (_) => const RegisterView(),
  HomeView.id: (_) => const HomeView(),
};