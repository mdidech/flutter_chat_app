import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chat_message.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 85,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Christine.jpg"),
                  maxRadius: 28,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Karima",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Actif il y a 5 heures",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey.shade200,
            child: ListView(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Aujourd’hui",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                ChatMessage(
                  isMeChatting: true,
                  messageBody: "Salut Karima, comment vas-tu ?",
                ),
                ChatMessage(
                  isMeChatting: false,
                  messageBody: "ça va hamdoullah et toi?",
                ),
                ChatMessage(
                  isMeChatting: false,
                  messageBody: "ouii hamdoullah Merçi",
                ),
                ChatMessage(
                  isMeChatting: true,
                  messageBody:
                      "Tu veux sortir un peu ce soir? On peut aller marcher un peu puis boire un café",
                ),
                ChatMessage(
                  isMeChatting: false,
                  messageBody: "Ouii, c'est avec pleasir!",
                ),
              ],
            ),
          ))
        ],
      )),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ecrire votre Message Ici",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900],
                    ),
                  ),
                  maxLines: 10,
                  minLines: 1,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                hoverColor: Colors.white,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  alignment: Alignment.center,
                  child:
                      Icon(Icons.send_rounded, color: Colors.white, size: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
