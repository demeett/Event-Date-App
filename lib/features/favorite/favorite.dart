import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/core.dart';
import '../../core/viewmodel/common_view_model.dart';
import 'widgets/favorite_list_tile.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.instance.themeData.primaryColor,
      ),
      body: Consumer<CommonViewModel>(
        builder: (context, value, child) {
          if (value.isEmpty) {
            return const Center(child: Text('Veri yok'));
          }

          return ListView.builder(
            itemCount: value.favoritesItemCount,
            itemBuilder: (context, index) {
              var event = value.getEventModelItemAt(index);
              return FavoriteListTile(event: event);
            },
          );
        },
      ),
    );
  }
}
