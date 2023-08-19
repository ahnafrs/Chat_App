// import 'package:day19/model/messageList.dart';
// import 'package:day19/mycolor/colors.dart';
// import 'package:flutter/material.dart';

// class LastMessage extends StatefulWidget {
//   @override
//   State<LastMessage> createState() => _LastMessageState();
// }

// class _LastMessageState extends State<LastMessage> {
//   final messageList = Message.generatedHomePageMessage();

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30),
//             )),
//         child: _buildmessages(),
//       ),
//     );
//   }

//   Widget _buildmessages() {
//     return ListView.separated(
//         itemBuilder: (context, index) => _buildmessage(context, index),
//         separatorBuilder: (_, index) => SizedBox(
//               height: 10,
//             ),
//         itemCount: messageList.length);
//   }

//   Widget _buildmessage(BuildContext, int index) {
//     return Row(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//           ),
//           child: Image.asset(
//             messageList[index].user.iconUrl,
//             height: 40,
//           ),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   '${messageList[index].user.firstName} ${messageList[index].user.lastName}',
//                   style: TextStyle(
//                       color: kPrimaryDart,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Text(
//               messageList[index].lastMessage,
//               overflow: TextOverflow.fade,
//             ),
//           ],
//         ),
//         Text(messageList[index].lastSeen),
//       ],
//     );
//   }
// }
import 'package:day19/model/messageList.dart';
import 'package:day19/mycolor/colors.dart';
import 'package:flutter/material.dart';

class LastMessage extends StatefulWidget {
  const LastMessage({super.key});

  @override
  State<LastMessage> createState() => _LastMessageState();
}

class _LastMessageState extends State<LastMessage> {
  final messageList = Message.generatedHomePageMessage();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: _buildmesseages(),
      ),
    );
  }

  Widget _buildmesseages() {
    return ListView.separated(
        itemBuilder: (context, index) => _buildmesseage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 10,
            ),
        itemCount: messageList.length);
  }

  Widget _buildmesseage(BuildContext, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: messageList[index].user.bgColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              messageList[index].user.iconUrl,
              height: 40,
            )),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${messageList[index].user.firstName} ${messageList[index].user.lastName}",
                  style: TextStyle(
                    color: kPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  messageList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )),
          ],
        ),
        Expanded(
          child: Text(
            messageList[index].lastSeen,
            textAlign: TextAlign.end,
            style: TextStyle(color: kGreyLight),
          ),
        ),
      ],
    );
  }
}
