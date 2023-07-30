import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Auth1login.dart';
import 'Auth1signup.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Auth1welcome(),
    );
  }
}

class Auth1welcome extends StatefulWidget {
  const Auth1welcome({super.key});
  @override
  State<Auth1welcome> createState() => _Auth1welcomeState();
}

class _Auth1welcomeState extends State<Auth1welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/362c57cfb570f91d7a56fe226e031024.jpeg'),
              fit: BoxFit.cover,
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
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
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
                height: 407,
              ),
              Container(
                  width: 414,
                  height: 328,
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
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                                maxLines: 3,
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
                      padding: const EdgeInsets.only(left: 11, top: 12,right: 17), // Add some left and top padding to the text
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, backgroundColor: Colors.transparent, // Remove any default padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ), disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                          elevation: 10, // Set the button surface color to transparent
                          shadowColor: const Color(0xFF6CC51D).withOpacity(0.25), // Set the shadow color
                        ),
                        child: Container(
                            width: 380,
                            height: 60,
                            decoration:     BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 33,
                              ),
                              Image.asset('assets/images/Google.png'),
                              const SizedBox(
                                width: 55,
                              ),
                              const Text(
                                "Continue with google",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, top: 12,right: 17), // Add some left and top padding to the text
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Auth1signup()),
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
                                width: 33,
                              ),
                              Image.asset('assets/images/Person.png'),
                              const SizedBox(
                                width: 55,
                              ),
                              const Text(
                                "Create an account",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
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
                            MaterialPageRoute(builder: (context) => Auth1login()),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "Already have an account ?",
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
                              "Login",
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
    );
  }
}





