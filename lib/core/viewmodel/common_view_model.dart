import 'package:flutter/material.dart';

import '../core.dart';

class CommonViewModel extends ChangeNotifier {
  List<EventModel> eventList = [];

  addEventModel(EventModel eventModel) {
    eventList.add(eventModel);
  }

  int get favoritesItemCount => eventList.length;

  void addFavorite(EventModel event) {
    eventList.add(event);
    notifyListeners();
  }

  void removeFavorite({required String id}) {
    if (eventList.isNotEmpty) {
      eventList.removeWhere((element) => element.id == id);
      notifyListeners();
    }
  }

  EventModel getEventModelItemAt(int index) => eventList[index];
}
