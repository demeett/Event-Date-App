import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';

class FavoriteListTile extends StatelessWidget {
  final EventModel event;
  const FavoriteListTile({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.calendar_month),
        title: Text(event.name ?? ""),
        subtitle: Text(event.nationality ?? ""),
        trailing:
            const Icon(Icons.arrow_circle_right_rounded, color: Colors.red),
      ),
    );
  }
}
