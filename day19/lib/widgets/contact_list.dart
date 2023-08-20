import 'package:day19/model/messageList.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  Message message;
  ContactList(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "${message.user.firstName}\n${message.user.lastName}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              _buildCallButton(Icons.phone),
              SizedBox(
                width: 10,
              ),
              _buildCallButton(Icons.video_call),
            ],
          )
        ]),
      ),
    );
  }

  Widget _buildCallButton(IconData iconData) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.2),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
