import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/screens/appointment_screen.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> symptoms = ["가정의학과", "이비인후과", "내과", "정형외과", "피부과"];
  List<String> doctors = ["Dr. 손인천", "Dr. 송우희", "Dr. 김현빈", "Dr. 김현수 "];
  List<String> rating = ["4.2", "4.0", "3.9", "4.4"];

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
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "내원하고 싶은 병원 종류가 어떻게 되시나요??",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                // Count를 먼저 선언하고 itemBuilder를 선언해야 함
                // 인덱스 갯수만큼 인지해야 하기 때문
                itemBuilder: (context, index) {
                  return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Color(0xfff4f6fa),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Colors.black12)
                        ],
                      ),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ));
                }),
          ),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "지금 인기 있는 의사선생님",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AppointmentScreen()));
                },
                child: Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("images/${imgs[index]}"),
                      ),
                      Text(
                        symptoms[index],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        doctors[index],
                        style: TextStyle(color: Colors.black45),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.amberAccent,
                          ),
                          Text(
                            rating[index],
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
