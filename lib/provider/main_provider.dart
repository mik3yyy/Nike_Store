import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';


class MainProvider with ChangeNotifier{

  List <int> _FavouriteList = [

  ];

  void addToFavorite (int index){
    print('ADDED TO LIST');
    _FavouriteList.add(index);
    print(_FavouriteList);

    notifyListeners();

  }

  void removeFromFavourite (int index){
    print('REMOVE FROM LIST');


      _FavouriteList.remove(index);

    print(_FavouriteList);


    notifyListeners();
  }
  List displayFavourite (){

    return _FavouriteList;
  }
  bool indexIsFavourite (int index){




    // _FavouriteList.map(
    //         (e) {
    //
    //       if (e==index){
    //         return true;
    //       }
    //     }
    // );
    return _FavouriteList.contains(index)? true: false;

  }



}