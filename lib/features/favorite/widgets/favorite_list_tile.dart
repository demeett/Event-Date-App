import 'package:event_date_app/core/core.dart';
import 'package:event_date_app/core/viewmodel/common_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteListTile extends StatelessWidget {
  final EventModel event;
  const FavoriteListTile({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CommonViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.calendar_month),
          title: Text(event.name ?? ""),
          subtitle: Text(event.nationality ?? ""),
          trailing: IconButton(
              onPressed: () {
                provider.removeFavorite(id: event.id ?? "");
              },
              icon: const Icon(Icons.arrow_circle_right_rounded, color: Colors.red)),
        ),
      ),
    );
  }
}
