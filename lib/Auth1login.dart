import 'package:cart1/Auth1signup.dart';
import 'package:cart1/ForgotPassword.dart';
import 'package:cart1/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class Auth1login extends StatefulWidget {
  const Auth1login({super.key});

  @override
  State<Auth1login> createState() => _Auth1loginState();
}

class _Auth1loginState extends State<Auth1login> {
  bool passwordvisibiliy = false;
  bool _obscurePassword = true;
  bool _isSwitched = false;
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/0efd51965623fa205d538719d2e5f747.jpeg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 414,
                  height: 131,
                  decoration:     const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter, end: Alignment.bottomCenter,
                        colors: [Colors.black, Color(0x00000000)], )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 17,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Auth1welcome()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 123,
                      ),
                      Text(
                          "Welcome",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                    ],
                  ),

                ),
                const SizedBox(
                  height: 282,
                ),
                Container(
                  width: 414,
                  height: 453,
                  decoration:     const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      color: Color(0xfff4f5f9)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 31), // Add some left and top padding to the text
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 2,right: 56), // Add some left and top padding to the text
                        child: Column(
                          children: [
                            Text(
                                "Sign in to your account",
                                style: TextStyle(
                                  color: Color(0xFF868889),
                                  letterSpacing: 1,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 26,right: 16), // Add some left and top padding to the text
                        child: Container(
                            width: 380,
                            height: 60,
                            decoration:     BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: TextField(
                              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'), // Adjust the font size as needed
                              onChanged: (value) {
                                if (value.contains(".")&&value.contains("@")) {
                                  passwordvisibiliy = true;
                                } else {
                                  passwordvisibiliy = false;
                                }
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email_outlined, color: Color(0xFF868889)),
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Poppins',
                                ),
                                prefixIconConstraints: BoxConstraints(minWidth: 80, minHeight: 40), // Add padding here
                                contentPadding: EdgeInsets.symmetric(vertical: 16), // Adjust the vertical padding as needed
                              ),
                            )
                        ),
                      ),
                    Padding(
                          padding: EdgeInsets.only(left: 16, top: 5,right: 16), // Add some left and top padding to the text
                          child: Container(
                              width: 380,
                              height: 60,
                              decoration:     BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: TextField(
                                obscureText: _obscurePassword,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r"\s")), // Prevent entering spaces
                                ],
                                style: TextStyle(fontSize: 16, fontFamily: 'Poppins', letterSpacing: 3),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock_outlined, color: Color(0xFF868889)),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: _togglePasswordVisibility,
                                    child: Icon(
                                      _obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                      color: Color(0xFF868889),
                                    ),
                                  ),
                                  prefixIconConstraints: BoxConstraints(minWidth: 80, minHeight: 40), // Add padding here
                                  contentPadding: EdgeInsets.symmetric(vertical: 16), // Adjust the vertical padding as needed
                                ),
                              ),
                          ),
                        ),
                      Padding(
                          padding: EdgeInsets.only(left: 26, top: 25,right: 16), // Add some left and top padding to the text
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isSwitched = !_isSwitched;
                                  });
                                },
                                child: Container(
                                  width: 29,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF868889),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: _isSwitched ? Color(0xFF868889) : Colors.transparent,
                                  ),
                                  child: AnimatedAlign(
                                    duration: Duration(milliseconds: 200),
                                    alignment: _isSwitched ? Alignment.centerRight : Alignment.centerLeft,
                                    child: Container(
                                      width: 13,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        color: _isSwitched ? Color(0xFFF4F5F9) : Color(0xFF868889),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 9.43,
                              ),
                              InkWell(
                                child: Text(
                                    "Remember me",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Color(0xFF868889),
                                      fontWeight: FontWeight.w500,
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 71,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                                  );
                                },
                                child: Text(
                                    "Forgot password",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Color(0xFF407EC7),
                                      fontWeight: FontWeight.w600,
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, top: 12,right: 17), // Add some left and top padding to the text
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero, backgroundColor: Colors.transparent, disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12), // Remove any default padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 10, // Set the button surface color to transparent
                            shadowColor: const Color(0xFF6CC51D).withOpacity(0.25), // Set the shadow color
                          ),
                          child: Container(
                            width: 380,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFAEDC81), Color(0xFF6CC51D)],
                              ),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 170,
                                ),
                                const Text(
                                  "Login",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 170,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 78, top: 20,right: 78), // Add some left and top padding to the text
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Auth1signup()),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Don’t have an account ?",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF868889),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
