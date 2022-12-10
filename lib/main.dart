import 'package:event_date_app/core/viewmodel/common_view_model.dart';
import 'package:event_date_app/features/favorite/favorite.dart';
import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (BuildContext context) => CommonViewModel(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.instance.themeData,
      home: const FavoritePage(),
    );
  }
}
