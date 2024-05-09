import "package:flutter/material.dart";

class UpcomingShecdule extends StatelessWidget {
  UpcomingShecdule({super.key});

  List<String> symptoms = ["가정의학과", "이비인후과", "내과", "정형외과", "피부과"];
  List<String> doctors = ["Dr. 손인천", "Dr. 송우희", "Dr. 김현빈", "Dr. 김현수 "];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "담당 의사 정보",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        doctors[1],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(symptoms[1]),
                      trailing: CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage("images/Otorhinolaryngology.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        thickness: 1,
                        height: 22,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "05/10/2024",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "10:30 AM",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(width: 8),
                              Text("예약완료",
                                  style: TextStyle(color: Colors.black54))
                            ],
                          )
                        ]),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xfff4f6fa),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 취소",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xff7165d6),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 변경",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Text(
            "담당 의사 정보",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        doctors[0],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(symptoms[0]),
                      trailing: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("images/Family.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        thickness: 1,
                        height: 22,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "05/10/2024",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "10:30 AM",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(width: 8),
                              Text("예약완료",
                                  style: TextStyle(color: Colors.black54))
                            ],
                          )
                        ]),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xfff4f6fa),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 취소",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xff7165d6),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 변경",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Text(
            "담당 의사 정보",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        doctors[3],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(symptoms[3]),
                      trailing: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("images/Orthopedics.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        thickness: 1,
                        height: 22,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "05/10/2024",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "10:30 AM",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(width: 8),
                              Text("예약완료",
                                  style: TextStyle(color: Colors.black54))
                            ],
                          )
                        ]),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xfff4f6fa),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 취소",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: Color(0xff7165d6),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "예약 변경",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
