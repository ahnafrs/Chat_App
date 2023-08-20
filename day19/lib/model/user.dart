import 'package:flutter/cupertino.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  static List<User> generatedUser() {
    return [
      User(0, "Ahnaf", "Rahman", "images/user1.png", Color(0xFFEDEEF7)),
      User(1, "Araf", "Rahman", "images/user2.png", Color(0xFF000036)),
      User(2, "Soy", "Rahman", "images/user3.png", Color(0xFFB4B7Bf)),
      User(3, "Joy", "Rahman", "images/user4.png", Color(0xFFEDEEF7)),
      User(4, "Esha", "Rahman", "images/user5.png", Color(0xFF000036)),
      User(5, "Elma", "Rahman", "images/user6.png", Color(0xFFB4B7Bf)),
      User(6, "Mix", "Rahman", "images/user7.png", Color(0xFFEDEEF7)),
      User(7, "Ubuntu", "Rahman", "images/user8.png", Color(0xFF000036)),
      User(8, "Ahnaf", "Rahman", "images/user1.png", Color(0xFFB4B7Bf)),
      User(9, "Araf", "Rahman", "images/user2.png", Color(0xFF000036)),
      User(10, "Soy", "Rahman", "images/user3.png", Color(0xFFEDEEF7)),
      User(11, "Joy", "Rahman", "images/user4.png", Color(0xFFB4B7Bf)),
      User(12, "Esha", "Rahman", "images/user5.png", Color(0xFF000036)),
      User(13, "Elma", "Rahman", "images/user6.png", Color(0xFFB4B7Bf)),
      User(14, "Mix", "Rahman", "images/user7.png", Color(0xFFB4B7Bf)),
      User(15, "Ubuntu", "Rahman", "images/user8.png", Color(0xFF000036)),
    ];
  }
}
