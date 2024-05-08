import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/screens/login_screen.dart";
import "package:flutter_medicalhealthcare/widgets/navbar_roots.dart";
import "package:flutter_medicalhealthcare/screens/signup_screen.dart";

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBarRoots()));
                },
                child: Text(
                  "넘어가기",
                  style: TextStyle(color: Color(0xff7165D6), fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.all(24),
              child: Image.asset("images/doctors.png"),
            ),
            SizedBox(height: 32),
            Text(
              "나에게 맞는 의사선생님 찾아가기",
              style: TextStyle(
                  color: Color(0xff7165D6),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4,
                  wordSpacing: 2),
            ),
            SizedBox(height: 12),
            Text(
              "나만의 주치의 매칭",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.4,
                  wordSpacing: 2),
            ),
            SizedBox(height: 52),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 42),
                      child: Text(
                        "로그인",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 42),
                      child: Text(
                        "회원가입",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
