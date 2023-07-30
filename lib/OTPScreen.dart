import 'package:cart1/Auth1signup.dart';
import 'package:cart1/Home.dart';
import 'package:cart1/VerfiyNumber.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String selectedCountryCode = '+1'; // Default selected country code
  TextEditingController phoneNumberController = TextEditingController();
  List<TextEditingController> controllers = List.generate(6, (_) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  void _onTextChanged(int index) {
    if (controllers[index].text.isNotEmpty) {
      if (index < controllers.length - 1) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        // If the last TextField, hide the keyboard and unfocus
        FocusScope.of(context).unfocus();
      }
    }
  }
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
                          MaterialPageRoute(builder: (context) => VerifyNumber()),
                        );
                      },
                      child: Icon(
                          Icons.arrow_back
                      ),
                    ),
                    SizedBox(width: 99),
                    Text(
                        "Verify Number",
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
                        "Verify your number",
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
                          "Enter your OTP code below",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        6,
                            (index) => Container(
                          width: 55,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                showCursor: false,
                                style: TextStyle(fontSize: 28, fontFamily: 'Poppins', letterSpacing: 3),
                                focusNode: focusNodes[index],
                                controller: controllers[index],
                                onChanged: (_) => _onTextChanged(index),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 12,right: 16), // Add some left and top padding to the text
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
                                width: 163,
                              ),
                              const Text(
                                "Next",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 163,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 12,right: 16), // Add some left and top padding to the text
                      child: Text(
                          "Did’nt receive the code ?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 0,right: 16), // Add some left and top padding to the text
                      child: Text(
                          "Resend a new code",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )
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
