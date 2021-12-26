import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Please choose the most convenient application for you and write a message!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 14,
          ),
          ButtonToChats(screenSize, () {
            
          }, FontAwesomeIcons.whatsapp, 'Write to WhatsApp', Colors.green),

          ButtonToChats(screenSize, () {
            
          }, FontAwesomeIcons.telegram, 'Write to Telegramm', Colors.blue),
        ],
      )),
    );
  }

  InkWell ButtonToChats(Size screenSize, Function onTap, IconData icon,
      String text, Color color) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        margin: EdgeInsets.symmetric(
          vertical: screenSize.height * 0.01,
          horizontal: screenSize.width * 0.147,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.01,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            text,
            style: const TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
