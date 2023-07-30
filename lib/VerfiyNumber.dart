import 'package:cart1/Auth1signup.dart';
import 'package:cart1/OTPScreen.dart';
import 'package:flutter/material.dart';

class VerifyNumber extends StatefulWidget {
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  String selectedCountryCode = '+1'; // Default selected country code
  TextEditingController phoneNumberController = TextEditingController();

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
                          MaterialPageRoute(builder: (context) => Auth1signup()),
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
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Country Code Selector
                          Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: DropdownButton<String>(
                              value: selectedCountryCode,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedCountryCode = newValue!;
                                });
                              },
                              items: <String>['+1', '+91', '+44', '+81'] // Add your desired country codes here
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(width: 10),
                          // Phone Number Input
                          Container(
                            width: 290,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              controller: phoneNumberController,
                              keyboardType: TextInputType.phone,
                              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 12,right: 16), // Add some left and top padding to the text
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => OTPScreen()),
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
                          "Resend confirmation code (1:23)",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
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
