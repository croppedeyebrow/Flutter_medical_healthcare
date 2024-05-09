import "package:flutter/material.dart";

class UpcomingShecdule extends StatelessWidget {
  const UpcomingShecdule({super.key});

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
                        "Dr. Doctor Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Therapist"),
                      trailing: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("images/doctor1.jpg"),
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
                          Icon(
                            Icons.calculate_outlined,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "05/10/2024",
                            style: TextStyle(color: Colors.black54),
                          )
                        ]),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
