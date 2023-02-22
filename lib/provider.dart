import 'package:flutter/cupertino.dart';

class Providerfunction extends ChangeNotifier{
  List<String>_fav=[];
  List<String>_fav1=[];
  List<String> get words=>_fav;
  List<String>get words1=>_fav1;

  void toggleFavorite(String word,String word1 ){
    final isExist=_fav.contains(word);
    print(isExist);
    if(isExist){
      _fav.remove(word);
      _fav1.remove(word1);
    }
    else{
      _fav.add(word);
      _fav1.add(word1);
    }
    notifyListeners();
  }
  bool symbol(String symbols ){
    final isExist =_fav.contains(symbols);
    return isExist;

  }

}