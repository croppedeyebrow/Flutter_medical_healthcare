import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/screens/login_screen.dart";

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 12),
            Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/doctors.png")),
            SizedBox(height: 16),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)))),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: "이메일을 입력하세요",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined)))),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: "핸드폰 번호를 입력하세요",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_android_outlined)))),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                    obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                        labelText: "비밀번호를 입력하세요.",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            if (passToggle == true) {
                              passToggle = false;
                            } else {
                              passToggle = true;
                            }
                            setState(() {});
                          },
                          child: passToggle
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        )))),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => LoginScreen(),
                      //     ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 42),
                      child: Center(
                        child: Text(
                          "가입하기",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "이미 저희 메디메이트의 가족이시군요?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "로그인",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF7165D6)),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
