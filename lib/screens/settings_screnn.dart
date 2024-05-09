import "package:flutter/material.dart";

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 52, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "설정",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 28),
          ListTile(
            leading: CircleAvatar(
                radius: 32, backgroundImage: AssetImage("images/doctor1.jpg")),
            title: Text(
              "코드지휘소",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            subtitle: Text(
              "프로필",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Divider(height: 38),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue.shade200, shape: BoxShape.circle),
              child: Icon(
                Icons.person,
                color: Colors.blue,
                size: 34,
              ),
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade200, shape: BoxShape.circle),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 34,
              ),
            ),
            title: Text(
              "알림",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.indigo.shade200, shape: BoxShape.circle),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 34,
              ),
            ),
            title: Text(
              "보안 및 개인정보",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green.shade200, shape: BoxShape.circle),
              child: Icon(
                Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 34,
              ),
            ),
            title: Text(
              "설정",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.orange.shade200, shape: BoxShape.circle),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.red,
                size: 34,
              ),
            ),
            title: Text(
              "주의사항",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          Divider(height: 38),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.redAccent.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.logout_rounded,
                color: Colors.redAccent,
                size: 34,
              ),
            ),
            title: Text(
              "로그아웃",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
        ]),
      ),
    );
  }
}
