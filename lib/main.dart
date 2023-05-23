import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      "pk_test_51NAo3ySFlW8fMWrpL3OBpNh1lErX1frdLoB5HRsFKqzvC91yebbAqfYpLcAYs7Fpq1u0sT6ZESFoNhGwUpfOLm1q00JrdtFezx";
  await dotenv.load(fileName: "assets/env/.env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
