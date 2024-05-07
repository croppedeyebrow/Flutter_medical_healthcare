import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  List symptoms = ["가정의학과", "이비인후과", "내과", "정형외과", "피부과"];

  List imgs = [
    "Family.png",
    "Orthopedics.png",
    "Dermatology.png",
    "Otorhinolaryngology.png",
    "medicine.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("내 주변 의사선생님",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("images/Family.png"),
                )
              ],
            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xff7165D6),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: Color(0xff7165D6),
                          size: 32,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "병원 내원",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "내원 예약하기",
                        style: TextStyle(color: Colors.white54),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xfff0eefa), shape: BoxShape.circle),
                        child: Icon(
                          Icons.home_filled,
                          color: Color(0xff7165D6),
                          size: 32,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "방문 서비스",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "선생님 방문 예약하기",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "불편한 증상이 어떻게 되시나요??",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
