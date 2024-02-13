import 'package:flutter/material.dart';
import 'package:stayz/approuter.dart';

void main() {
  runApp(Stazy(
    appRouter: AppRouter(),
  ));
}

class Stazy extends StatelessWidget {
  final AppRouter appRouter;
  const Stazy({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}

  // This  