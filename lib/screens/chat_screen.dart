import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/widgets/chat_sample.dart";

class ChatScreen extends StatelessWidget {
  final String doctor;

  final String porfileimg;
  final String send;

  ChatScreen({
    required this.porfileimg,
    required this.doctor,
    required this.send,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff7165d6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("images/$porfileimg")),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    doctor,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.phone_android,
                color: Colors.white,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.video_call_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => ChatSample(
          send: send,
        ),
      ),
      bottomSheet: Container(
        height: 84,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black54, spreadRadius: 2, blurRadius: 12)
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.add),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Icon(
                Icons.emoji_emotions_rounded,
                color: Colors.purple,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.8,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "문의하고 싶은 내용을 입력하세요", border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                color: Colors.purple,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
