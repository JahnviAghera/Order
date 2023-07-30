import 'package:cart1/Auth1signup.dart';
import 'package:cart1/OTPScreen.dart';
import 'package:cart1/cart.dart';
import 'package:flutter/material.dart';

import 'Search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedCountryCode = '+1'; // Default selected country code
  TextEditingController phoneNumberController = TextEditingController();
  List<String> cartItems = []; // List to store selected items
  Map<String, int> cartQuantities = {}; // Map to store item quantities in the cart

  void addToCart(String item) {
    setState(() {
      if (cartItems.contains(item)) {
        cartQuantities[item] = (cartQuantities[item] ?? 0) + 1;
      } else {
        cartItems.add(item);
        cartQuantities[item] = 1;
      }
    });
  }

  void removeFromCart(String item) {
    setState(() {
      if (cartQuantities[item] == 1) {
        cartItems.remove(item);
        cartQuantities.remove(item);
      } else {
        cartQuantities[item] = (cartQuantities[item] ?? 0) - 1;
      }
    });
  }
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void onSearch() {
    String searchTerm = searchController.text;
    // Perform the search or any other action based on the search term
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Search()), // Replace Auth1signup with your desired screen
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 51),
              Container(
                width: 380,
                height: 50,
                decoration:     BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xfff4f5f9)),
                child: TextField(
                  cursorColor: Color(0xFF868889),
                  controller: searchController,
                  style: TextStyle(
                  ),
                  onEditingComplete: onSearch,
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: onSearch,
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
              SizedBox(height: 16),
              Container(
                  width: 590,
                  height: 307,
                  child: Image.asset(
                    "assets/images/ella-olsson-rD3YrnhTmf0-unsplash 1.png",
                  )
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Categories",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    Icon(Icons.arrow_forward_ios,color: Color(0xFF868889),)
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 242.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Vegetables",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 243.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Fruits",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 244.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Beverages",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 245.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Grocery",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 246.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Edible oil",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/Group 247.png'
                          ),
                          SizedBox(height: 11),
                          Text(
                              "Household",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      ),
                      SizedBox(width: 19),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Featured products",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    Icon(Icons.arrow_forward_ios,color: Color(0xFF868889),)
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 181,
                          height: 234,
                          decoration:     BoxDecoration(
                              color: Colors.white),
                          child: Column(
                            children: [
                              SizedBox(height: 21),
                              Container(
                                height: 94,
                                child: Image.asset('assets/images/Group 32.png'),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  "8.00",
                                  style: TextStyle(
                                    color: Color(0xFF6CC51D),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              SizedBox(height: 8),
                              Text(
                                  "Fresh Peach",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              SizedBox(height: 1),
                              Text(
                                  "dozen",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF868889),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: 181,
                                height: 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Color(0xFFEBEBEB), // Change the color to your desired color
                                      width: 1.0, // Change the width to adjust the border thickness
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 4),

                                  cartItems.contains("Fresh Peach") // Replace "Fresh Peach" with the item you want to check
                                      ? Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          removeFromCart("Fresh Peach"); // Replace "Fresh Peach" with the item you want to remove
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(width: 24),
                                      Text(
                                        cartQuantities["Fresh Peach"].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 24),
                                      GestureDetector(
                                        onTap: () {
                                          addToCart("Fresh Peach"); // Replace "Fresh Peach" with the item you want to add
                                        },
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  )
                                      : GestureDetector(
                                      onTap: () {
                                        addToCart("Fresh Peach"); // Replace "Fresh Peach" with the item you want to add
                                      },
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/Vector (1).png'),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Add to cart",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                  SizedBox(height: 4),
                                ],
                              )

                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          width: 181,
                          height: 234,
                          decoration:     BoxDecoration(
                              color: Colors.white),
                          child: Column(
                            children: [
                              SizedBox(height: 21),
                              Container(
                                height: 94,
                                child: Image.asset('assets/images/Group 248.png'),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  "8.00",
                                  style: TextStyle(
                                    color: Color(0xFF6CC51D),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              SizedBox(height: 8),
                              Text(
                                  "Avacoda",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              SizedBox(height: 1),
                              Text(
                                  "dozen",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF868889),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: 181,
                                height: 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Color(0xFFEBEBEB), // Change the color to your desired color
                                      width: 1.0, // Change the width to adjust the border thickness
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 4),

                                  cartItems.contains("Avacoda") // Replace "Avacoda" with the item you want to check
                                      ? Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          removeFromCart("Avacoda"); // Replace "Avacoda" with the item you want to remove
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(width: 24),
                                      Text(
                                        cartQuantities["Avacoda"].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 24),
                                      GestureDetector(
                                        onTap: () {
                                          addToCart("Avacoda"); // Replace "Avacoda" with the item you want to add
                                        },
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  )
                                      : GestureDetector(
                                    onTap: () {
                                      addToCart("Avacoda"); // Replace "Avacoda" with the item you want to add
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/Vector (1).png'),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Add to cart",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ),
                                  SizedBox(height: 4),
                                ],
                              )

                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  width: 414,
                  height: 75,
                  decoration:     BoxDecoration(
                      color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/Group (3).png'),
                    Image.asset('assets/images/user (1).png'),
                    Image.asset('assets/images/like.png'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cart(
                              cartItems: cartItems,
                              cartQuantities: cartQuantities,
                            ),
                          ),
                        );
                      },
                      child: Image.asset('assets/images/gcart.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
