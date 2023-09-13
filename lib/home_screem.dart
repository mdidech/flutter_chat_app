import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chat_screen.dart';

class Home extends StatelessWidget {
  List images = [
    "assets/images/Christine.jpg",
    "assets/images/Davis.jpg",
    "assets/images/Johnson.jpg",
    "assets/images/Jones Noa.jpg",
    "assets/images/Parker Bee.jpg",
    "assets/images/Smith.jpg",
  ];
  List names = [
    "Karima",
    "Amine",
    "Johnson",
    "Mohamed",
    "Tarik",
    "Smith",
  ];
  List msgTiming = [
    "Lun",
    "12:20",
    "Sam",
    "22:23",
    "05:23",
    "Ven",
  ];
  List msgs = [
    "Hi, comment va Tu?",
    "Ou va tu ce soir?",
    "Hello Dear, its all right?",
    "mcharfin b ma3rifa dialk",
    "wa fayn a sat?",
    "Bye",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black87,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "récente",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              images[index],
                            ),
                            minRadius: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 20),
              ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Chat(),
                          ));
                    },
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        images[index],
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(msgs[index]),
                    trailing: Text(msgTiming[index]),
                  );
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
