import 'package:day19/model/user.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatefulWidget {
  const RecentContacts({super.key});

  @override
  State<RecentContacts> createState() => _RecentContactsState();
}

class _RecentContactsState extends State<RecentContacts> {
  final contactList = User.generatedUser();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.2)),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
            Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: contactList[index].bgColor,
                          ),
                          child: Image.asset(
                            contactList[index].iconUrl,
                            height: 10,
                          ),
                        ),
                    separatorBuilder: (_, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: contactList.length)),
          ],
        ),
      ),
    );
  }
}
