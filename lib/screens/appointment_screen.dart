import "package:flutter/material.dart";

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({super.key});

  List imgs = [
    "Family.png",
    "Orthopedics.png",
    "Dermatology.png",
    "Otorhinolaryngology.png",
    "medicine.png"
  ];

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
                          backgroundImage: AssetImage("images/Family.png"),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Dr.김현빈",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "내과",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
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
