import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ywsl_app/config/themes/light_theme.dart';
import 'package:ywsl_app/features/orders/presentation/screens/list_of_orders.dart';
import 'features/auth/presentation/screens/login.dart';
import 'injector.dart';
import 'observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await MyInjector.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
