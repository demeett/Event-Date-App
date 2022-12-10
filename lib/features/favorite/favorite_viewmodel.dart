
import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteViewModel extends ChangeNotifier {

    List<EventModel> _favoriteList = [
      EventModel(id: "1", title: "Fatih", description: "Deneme 1", location: "Ankara"),
      EventModel(id: "2", title: "Ercan", description: "Deneme 2", location: "İstanbul"),
      EventModel(id: "3", title: "Messi", description: "Deneme 3", location: "Bursa"),
      EventModel(id: "4", title: "Goat", description: "Deneme 4", location: "İzmir")
    ];

    int get favoritesItemCount => _favoriteList.length;
    
    void addFavorite(EventModel event) {
      _favoriteList.add(event);
      notifyListeners();
    }

    void removeFavorite({required String id}) {
      if (_favoriteList.isNotEmpty) {
        _favoriteList.removeWhere((element) => element.id == id);
        notifyListeners();
      }
    }
    
    EventModel getEventModelItemAt(int index) => _favoriteList[index];
}