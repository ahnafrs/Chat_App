import 'package:day19/model/user.dart';
import 'package:flutter/material.dart';

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

  static List<Message> generatedMessageFromUser() {
    return [
      Message(users[0], 'Hey, did you catch the World Cup game last night?',
          "10:00 AM"),
      Message(users[1], 'Yes, it was amazing! The goals were incredible!',
          "10:05 AM"),
      Message(users[2], 'I missed it. Who won?', "10:10 AM"),
      Message(users[3], 'Brazil won 3-1 against Germany!', "10:12 AM"),
      Message(users[4], 'That Neymar goal was out of this world!', "10:15 AM"),
      Message(users[5], 'Im so glad I stayed up to watch it!', "10:20 AM"),
      Message(users[6], 'Brazil looks strong this year!', "10:25 AM"),
      Message(users[7], 'Absolutely! Theyre one of the favorites.', "10:30 AM"),
      Message(me, 'I hope my team makes it to the finals!', "10:35 AM"),
      Message(users[8], 'Who are you supporting, England?', "10:40 AM"),
      Message(me, 'Yes, come on England!', "10:45 AM"),
      Message(users[9], 'England has a good chance this time.', "10:50 AM"),
      Message(users[10], 'Im excited for the quarter-finals!', "10:55 AM"),
      Message(
          users[11], 'Who do you think will win the Golden Boot?', "11:00 AM"),
      Message(users[12], 'Im betting on Mbappé!', "11:05 AM"),
      Message(users[13], 'Ronaldo could still surprise us!', "11:10 AM"),
      Message(users[14], 'Messi is always a contender.', "11:15 AM"),
      Message(users[15], 'Dont forget about Kane!', "11:20 AM"),
      Message(users[0], 'It will be a tough competition for sure.', "11:25 AM"),
      Message(users[1], 'Cant wait for the semis and the final!', "11:30 AM"),
      Message(
          users[2], 'The World Cup is the best time of the year!', "11:35 AM"),
      Message(users[3], 'Agreed! Football fever is in the air!', "11:40 AM"),
      Message(users[4], 'Whos hosting the next World Cup?', "11:45 AM"),
      Message(users[5], 'Qatar is hosting the next one!', "11:50 AM"),
      Message(
          users[6], 'It will be interesting in the Middle East!', "11:55 AM"),
      Message(users[7], 'Lets hope for another unforgettable tournament!',
          "12:00 PM"),
      Message(me, 'Absolutely! Viva la World Cup!', "12:05 PM"),
      Message(
          users[8], 'Im planning to attend the next World Cup.', "12:10 PM"),
      Message(users[9], 'That sounds amazing! Qatar will be an experience.',
          "12:15 PM"),
      Message(users[10], 'Dont forget to get those tickets early!', "12:20 PM"),
      Message(users[11],
          'I heard the stadiums are going to be state-of-the-art.', "12:25 PM"),
      Message(me, 'I cant wait to experience the atmosphere!', "12:30 PM"),
      Message(
          users[12], 'Will you be rooting for your national team?', "12:35 PM"),
      Message(users[13], 'Of course! Im proud of my country.', "12:40 PM"),
      Message(users[14], 'Its going to be a festival of football!', "12:45 PM"),
      Message(users[15], 'And the world will be watching!', "12:50 PM"),
      Message(me, 'Lets hope its an unforgettable tournament!', "12:55 PM"),
      // 10 new lines discussing Argentina winning
      Message(users[0], 'You know whos going to win, right? Argentina!',
          "01:00 PM"),
      Message(users[1], 'Haha, youre a true Argentina fan!', "01:05 PM"),
      Message(users[2], 'Messi will lead them to victory!', "01:10 PM"),
      Message(users[3], 'Argentina has a strong team this year!', "01:15 PM"),
      Message(users[4], 'I wouldnt be surprised if they win!', "01:20 PM"),
      Message(users[5], 'Argentina all the way!', "01:25 PM"),
      Message(users[6], 'Theyve got the talent and experience!', "01:30 PM"),
      Message(users[7], 'Messi deserves a World Cup win!', "01:35 PM"),
      Message(me, 'Ive got my Argentina jersey ready!', "01:40 PM"),
      Message(users[8], 'Its going to be an exciting tournament!', "01:45 PM"),
    ];
  }
}

var users = User.generatedUser();
var me = User(0, "Ahnaf", "Rahman", "images/user1.png", Color(0xFFEDEEF7));
