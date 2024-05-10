import "package:custom_clippers/custom_clippers.dart";
import "package:flutter/material.dart";

class ChatSample extends StatelessWidget {
  final String send;

  ChatSample({
    required this.send,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xffe1e1e2)),
              child: Text(
                "어떤 증상으로 불편을 겪고 계신가요?? 바로 내원 상담을 받아보세요",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 80),
              child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 25, right: 20),
                    decoration: BoxDecoration(color: Color(0xff7165d6)),
                    child: Text(
                      send,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
            )),
      ],
    );
  }
}
