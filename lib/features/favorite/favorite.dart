import 'package:event_date_app/core/core.dart';
import 'package:event_date_app/features/favorite/favorite_viewmodel.dart';
import 'package:event_date_app/features/favorite/widgets/favorite_list_tile.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  late FavoriteViewModel viewModel;

  @override
  void initState() {
    viewModel = FavoriteViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.instance.themeData.primaryColor,
      ),
      body: ListView.builder(
        itemCount: viewModel.favoritesItemCount,
        itemBuilder: ((context, index) {
        var event = viewModel.getEventModelItemAt(index);
        return FavoriteListTile(event: event);
      })),
    );
  }
}