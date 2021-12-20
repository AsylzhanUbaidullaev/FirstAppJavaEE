import 'package:flutter/cupertino.dart';
import 'package:super_app/domain/user.dart';

class UserProvider extends ChangeNotifier{

  User _user = User();

  User get user => _user;

  void setUser (User user){
    _user = user;
    notifyListeners();
  }
}