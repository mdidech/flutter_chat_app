import 'package:flutter/material.dart';
import 'package:flutter_chat_app/home_screem.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/chat.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 45,
          ),
          InkWell(
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()))
                  },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  "Discutons !",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ))
        ],
      ),
    );
  }
}
