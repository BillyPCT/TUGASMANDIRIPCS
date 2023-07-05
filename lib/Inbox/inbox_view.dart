import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/Inbox/inbox_appbar.dart';
import 'package:tugasmandiripcs/constant.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: InboxAppBar(),
        backgroundColor: FinancePalette.grey,
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
