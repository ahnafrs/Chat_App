import 'package:day19/mycolor/colors.dart';
import 'package:day19/widgets/message.dart';
import 'package:day19/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Chat with\nYour Friends",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RecentContacts(),
            LastMessage(),
          ]),
        ),
      ),
    );
  }
}

 // child: Padding(
        //   padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "Chat With\nYour Friends",
        //           style: TextStyle(
        //             fontSize: 30,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //       // RecentContacts(),
        //       // LastMessage(),
        //     ],
        //   ),
        // ),