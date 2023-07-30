import 'package:cart1/Auth1login.dart';
import 'package:cart1/Auth1signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 68),
            Row(
              children: [
                SizedBox(width: 17),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Auth1login()),
                    );
                  },
                  child: Icon(
                      Icons.arrow_back
                  ),
                ),
                SizedBox(width: 76),
                Text(
                    "Password Recovery",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: 84),
                Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )
                ),
                SizedBox(height: 13),
             Container(
               width: 322,
               child:  Text(
                   "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 15,
                     fontFamily: 'Poppins',
                     color: Color(0xFF868889),
                     fontWeight: FontWeight.w500,
                   )
               ),
             ),
                SizedBox(height: 44),
                Container(
                    width: 380,
                    height: 60,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: TextField(
                      style: TextStyle(fontSize: 16, fontFamily: 'Poppins'), // Adjust the font size as needed
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
                SizedBox(height: 13),
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
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
                          width: 156,
                        ),
                        const Text(
                          "Send Link",
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
              ],
            )
          ],
        ),
      )
    );
  }
}
