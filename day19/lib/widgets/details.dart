import 'package:day19/model/messageList.dart';
import 'package:day19/mycolor/colors.dart';
import 'package:day19/widgets/contact_list.dart';
import 'package:day19/widgets/details_appbar.dart';
import 'package:day19/widgets/details_message.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Message message;
  DetailsPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsAppBar(),
            ContactList(message),
            DetailsMessages(),
          ],
        ),
      ),
    );
  }
}
