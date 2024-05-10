import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/screens/chat_screen.dart";

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  List imgs = [
    "Family.png",
    "Otorhinolaryngology.png",
    "medicine.png",
    "Orthopedics.png",
    "Dermatology.png",
    "birth.png",
  ];

  List<String> symptoms = ["가정의학과", "이비인후과", "내과", "정형외과", "피부과", "산부인과"];
  List<String> doctors = [
    "Dr. 손인천",
    "Dr. 송우희",
    "Dr. 김현빈",
    "Dr. 김현수 ",
    "Dr. 이재성",
    "Dr. 허한비"
  ];

  List<String> message = [
    "몸살기운이 3일째 계속되고 있어요",
    "귀에서 이명이 들리고 먹먹해요",
    "졸리지 않은 감기약을 처방받고 싶은데요",
    "어깨 회전근 부분을 운동하다가 다쳤어요",
    "면도 후 피부에 빨간 반점이 생겼어요",
    "다음 검진은 언제쯤 해야할까요?"
  ];
  List<String> sentime = ["12:30", "09:30", "08:30", "07:30", "06:30", "05:30"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text("채팅",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search", border: InputBorder.none),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff7165d6),
                    )
                  ],
                )),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Recent Chats",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              spreadRadius: 2)
                        ]),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            width: 62,
                            height: 62,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(4),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              porfileimg: imgs[index],
                              doctor: doctors[index],
                              send: message[index],
                            ),
                          ));
                    },
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                    ),
                    title: Text(doctors[index],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      message[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Text(
                      sentime[index],
                      style: TextStyle(fontSize: 14, color: Colors.black26),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
