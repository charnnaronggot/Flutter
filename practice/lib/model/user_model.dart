import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {
  String username = 'John Galt';
  bool isMember = false;

  void changeUsername(String newName) {
    username = newName;
    notifyListeners();
  }

  void makeMember() {
    isMember = true;
    notifyListeners();
  }
}
