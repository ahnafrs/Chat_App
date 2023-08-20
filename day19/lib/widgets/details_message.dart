import 'package:day19/model/messageList.dart';

import 'package:day19/mycolor/colors.dart';
import 'package:flutter/material.dart';

class DetailsMessages extends StatelessWidget {
  final myId = 0;
  final list = Message.generatedMessageFromUser();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: ListView.separated(
                  itemBuilder: (context, index) => list[index].user.id == myId
                      ? _buildReceivedText(context, list[index])
                      : _buildSenderText(context, list[index]),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: list.length),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReceivedText(BuildContext context, Message message) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Text(message.lastSeen),
        Spacer(),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kPrimaryLight,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Container(
            child: Text(
              message.lastMessage,
              maxLines: 2,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildSenderText(BuildContext context, Message message) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: message.user.bgColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            message.user.iconUrl,
            height: 30,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kGreyLight,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            message.lastMessage,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Spacer(),
        Text(message.lastSeen),
      ]),
    );
  }
}
