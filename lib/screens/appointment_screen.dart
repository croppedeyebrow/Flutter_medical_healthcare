import "package:flutter/material.dart";

class AppointmentScreen extends StatelessWidget {
  List imgs = [
    "Family.png",
    "Otorhinolaryngology.png",
    "Dermatology.png",
    "Orthopedics.png",
    "medicine.png"
  ];

  List<String> doctors = ["Dr. 손인천", "Dr. 송우희", "Dr. 김현빈", "Dr. 김현수 "];
  final String doctor;
  final String symptom;
  final String porfileimg;
  final String review;

  AppointmentScreen(
      {required this.porfileimg,
      required this.doctor,
      required this.symptom,
      required this.review});
  // AppointmentScreen 클래스의 생성자입니다.
// 이 생성자는 'doctor'와 'symptom' 두 개의 매개변수를 필요로 합니다.
// 'required' 키워드는 이 매개변수들이 필수적으로 제공되어야 함을 나타냅니다.
// 즉, AppointmentScreen 객체를 생성할 때는 반드시 'doctor'와 'symptom' 값을 제공해야 합니다.

// '{required this.doctor, required this.symptom}'는 Dart의 named parameter 문법을 사용한 것입니다.
// 이를 통해 매개변수의 순서에 상관없이 이름을 지정하여 값을 전달할 수 있습니다.

// 'this.doctor'와 'this.symptom'은 각각 AppointmentScreen 클래스의 'doctor'와 'symptom' 필드를 나타냅니다.
// 'required this.doctor'는 전달받은 'doctor' 매개변수의 값을 클래스의 'doctor' 필드에 할당하라는 의미입니다.
// 'required this.symptom'도 마찬가지로 전달받은 'symptom' 매개변수의 값을 클래스의 'symptom' 필드에 할당하라는 의미입니다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff7165D6),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 52),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 24,
                          )),
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                            size: 24,
                          ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 34,
                          backgroundImage: AssetImage("images/$porfileimg"),
                        ),
                        SizedBox(height: 16),
                        Text(
                          doctor,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          symptom,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff9f97e2),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            SizedBox(width: 22),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff9f97e2),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.chat_bubble,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 22, left: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "당신만의 주치의가 되어드리겠습니다.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Text("당신의 증상을 알려주세요,",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  Text("당신을 위한 최적의 치료법을 찾아드리겠습니다.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text("Reviews",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(width: 12),
                      Icon(Icons.star_border, color: Colors.amberAccent),
                      Text(
                        review,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(width: 6),
                      Text("(140)",
                          style: TextStyle(
                              color: Color(0xff7165d6),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      // Spacer 위젯은 가능한 많은 공간을 차지하도록 확장됩니다.
                      // 이를 통해 Row 위젯의 오른쪽에 위치한 위젯들을 오른쪽으로 밀어줍니다.
                      TextButton(
                          onPressed: () {},
                          child: Text("See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff7165d6)))),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: EdgeInsets.all(12),
                              padding: EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        radius: 16,
                                        backgroundImage:
                                            AssetImage("images/${imgs[index]}"),
                                      ),
                                      title: Text(
                                        "${doctors[index]}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("1 hour ago"),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: Colors.amberAccent,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ));
                        }),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
