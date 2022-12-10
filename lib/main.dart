import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'features/add_event/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.instance.themeData,
      home: const Home(),
    );
  }
}
