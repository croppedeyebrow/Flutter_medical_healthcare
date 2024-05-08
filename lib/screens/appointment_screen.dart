import "package:flutter/material.dart";

class AppointmentScreen extends StatelessWidget {
  List imgs = [
    "Family.png",
    "Orthopedics.png",
    "Dermatology.png",
    "Otorhinolaryngology.png",
    "medicine.png"
  ];
  final String doctor;
  final String symptom;
  final String porfileimg;

  AppointmentScreen(
      {required this.porfileimg, required this.doctor, required this.symptom});
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
                        SizedBox(height: 6),
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
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
