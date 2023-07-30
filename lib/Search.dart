import 'package:cart1/Auth1signup.dart';
import 'package:cart1/Home.dart';
import 'package:cart1/OTPScreen.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: Column(
        children: [
          Container(
            height: 118,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                SizedBox(height: 51),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 11,),
                    Container(
                      width: 346,
                      height: 50,
                      decoration:     BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xfff4f5f9)),
                      child: TextField(
                        cursorColor: Color(0xFF868889),
                        style: TextStyle(
                        ),
                        decoration: InputDecoration(
                          prefixIcon: GestureDetector(
                            child: Icon(Icons.search,color: Color(0xFF868889),),
                          ),
                          suffixIcon: Image.asset('assets/images/Filter.png'),
                          hintText: 'Search keywords . .',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
          SizedBox(height: 21,),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                            "Search History",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        SizedBox(width: 218,),
                        Text(
                            "clear",
                            style: TextStyle(
                              color: Color(0xFF407EC7),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                            "Discover more",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        SizedBox(width: 218,),
                        Text(
                            "clear",
                            style: TextStyle(
                              color: Color(0xFF407EC7),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
