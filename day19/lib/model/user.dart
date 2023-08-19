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
      User(1, "Ahnaf", "Rahman", "images/user1.png", Color(0xFFEDEEF7)),
      User(2, "Araf", "Rahman", "images/user2.png", Color(0xFF000036)),
      User(3, "Soy", "Rahman", "images/user3.png", Color(0xFFB4B7Bf)),
      User(4, "Joy", "Rahman", "images/user4.png", Color(0xFFEDEEF7)),
      User(5, "Esha", "Rahman", "images/user5.png", Color(0xFF000036)),
      User(6, "Elma", "Rahman", "images/user6.png", Color(0xFFB4B7Bf)),
      User(7, "Mix", "Rahman", "images/user7.png", Color(0xFFEDEEF7)),
      User(8, "Ubuntu", "Rahman", "images/user8.png", Color(0xFF000036)),
      User(9, "Ahnaf", "Rahman", "images/user1.png", Color(0xFFB4B7Bf)),
      User(10, "Araf", "Rahman", "images/user2.png", Color(0xFF000036)),
      User(11, "Soy", "Rahman", "images/user3.png", Color(0xFFEDEEF7)),
      User(12, "Joy", "Rahman", "images/user4.png", Color(0xFFB4B7Bf)),
      User(13, "Esha", "Rahman", "images/user5.png", Color(0xFF000036)),
      User(14, "Elma", "Rahman", "images/user6.png", Color(0xFFB4B7Bf)),
      User(15, "Mix", "Rahman", "images/user7.png", Color(0xFFB4B7Bf)),
      User(16, "Ubuntu", "Rahman", "images/user8.png", Color(0xFF000036)),
    ];
  }
}
