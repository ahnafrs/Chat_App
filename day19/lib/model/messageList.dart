import 'package:day19/model/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastSeen;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastSeen,
      {this.isContinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], "See you!", '13:11'),
      Message(users[1], "What is that?!", '23:00'),
      Message(users[2], "I hate you man", '10:52'),
      Message(users[3], "Goodbye for now!", '19:30'),
      Message(
          users[4],
          "Take care!I will miss you. Have a safe journey.And bring me some chips",
          '20:15'),
      Message(users[5], "Until next time!", '21:00'),
      Message(users[6], "Catch you later!", '17:45'),
      Message(users[7], "Farewell!", '22:10'),
      Message(users[8], "Bye-bye!", '18:20'),
      Message(users[9], "Adios!", '19:55'),
      Message(users[10], "So long!", '20:45'),
      Message(users[11], "See you soon!", '21:30'),
      Message(users[12], "Till we meet again!", '19:15'),
      Message(users[13], "Later!", '22:40'),
      Message(users[14], "Goodnight!", '23:50'),
      Message(users[15], "Ciao!", '20:30'),
    ];
  }
}

var users = User.generatedUser();
