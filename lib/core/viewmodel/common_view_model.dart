import 'package:flutter/material.dart';

import '../core.dart';

class CommonViewModel extends ChangeNotifier {
  List<EventModel> eventList = [];

  addEventModel(EventModel eventModel) {
    eventList.add(eventModel);
  }
}
