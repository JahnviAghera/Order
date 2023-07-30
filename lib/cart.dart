import 'package:cart1/Auth1signup.dart';
import 'package:cart1/Home.dart';
import 'package:cart1/OTPScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  final List<String> cartItems;
  final Map<String, int> cartQuantities;

  cart({required this.cartItems, required this.cartQuantities});

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: Column(
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                SizedBox(height: 51),
                Row(
                  children: [
                    SizedBox(width: 17,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 98,),
                    Text(
                        "Shopping Cart",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  ],
                ),
              ],
            )
          ),
          SizedBox(height: 21,),
         SingleChildScrollView(
           child:  Column(
             children: [
               Dismissible(
                 key: Key('unique_key_for_each_item'),
                 direction: DismissDirection.endToStart,
                 background: Container(
                   color: Colors.red,
                   alignment: Alignment.centerRight,
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: Icon(Icons.delete_outline, color: Colors.white),
                 ),
                 onDismissed: (direction) {
                   // Handle the delete action here
                   setState(() {
                     // Remove the item from the list
                     // cartItems.removeAt(index); // Replace 'index' with the index of the item you want to remove
                   });

                   // Show a snackbar with an undo option
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                       content: Text('Item deleted'),
                       action: SnackBarAction(
                         label: 'Undo',
                         onPressed: () {
                           // Implement undo functionality here if needed
                           // For example, you can add the item back to the list
                           // cartItems.insert(index, deletedItem); // Replace 'index' and 'deletedItem' accordingly
                         },
                       ),
                     ),
                   );
                 },
                 child: Container(
                   width: 380,
                   height: 100,
                   child: Stack(
                     children: [
                       Positioned(
                         left: 0,
                         top: 0,
                         child: Container(
                           width: 380,
                           height: 100,
                           decoration: BoxDecoration(color: Colors.white),
                         ),
                       ),
                       Positioned(
                         left: 15,
                         top: 14.18,
                         child: Container(
                           width: 64,
                           height: 71.82,
                           child: Stack(
                             children: [
                               Positioned(
                                 left: 0,
                                 top: 0,
                                 child: Container(
                                   width: 64,
                                   height: 64,
                                   child: Stack(
                                     children: [
                                       Positioned(
                                         left: 0,
                                         top: 0,
                                         child: Container(
                                           width: 64,
                                           height: 64,
                                           decoration: ShapeDecoration(
                                             color: Color(0xFFD2FFCF),
                                             shape: OvalBorder(),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 4,
                                 top: 15.82,
                                 child: Container(
                                   width: 55,
                                   height: 56,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/green-fresh-broccoli.png'),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Positioned(
                         left: 101,
                         top: 22,
                         child: Container(
                           width: 107,
                           height: 57,
                           child: Stack(
                             children: [
                               Positioned(
                                 left: 0,
                                 top: 0,
                                 child: Text(
                                   '\$2.22 x 4',
                                   style: TextStyle(
                                     color: Color(0xFF6CC51D),
                                     fontSize: 12,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 0,
                                 top: 39,
                                 child: Text(
                                   '1.50 lbs',
                                   style: TextStyle(
                                     color: Color(0xFF868889),
                                     fontSize: 12,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w400,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 0,
                                 top: 17,
                                 child: Text(
                                   'Fresh Broccoli',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Positioned(
                         left: 348,
                         top: 16,
                         child: Container(
                           width: 12.83,
                           height: 68,
                           child: Stack(
                             children: [
                               Positioned(
                                   left: 0,
                                   top: 0,
                                   child: Container(
                                     width: 12.83,
                                     height: 11.85,
                                     child: Stack(
                                       children: [
                                         Icon(CupertinoIcons.plus)
                                       ],
                                     ),
                                   )
                               ),
                               Positioned(
                                 left: 1,
                                 top: 28,
                                 child: Text(
                                   '5',
                                   style: TextStyle(
                                     color: Color(0xFF868889),
                                     fontSize: 15,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                               Positioned(
                                   left: 0,
                                   top: 54,
                                   child: Container(
                                     width: 12.83,
                                     height: 11.85,
                                     child: Stack(
                                       children: [
                                         Icon(CupertinoIcons.minus)
                                       ],
                                     ),
                                   )
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 11),
               Dismissible(
                 key: Key('unique_key_for_each_item2'),
                 direction: DismissDirection.endToStart,
                 background: Container(
                   color: Colors.red,
                   alignment: Alignment.centerRight,
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: Icon(Icons.delete_outline, color: Colors.white),
                 ),
                 onDismissed: (direction) {
                   // Handle the delete action here
                   setState(() {
                     // Remove the item from the list
                     // cartItems.removeAt(index); // Replace 'index' with the index of the item you want to remove
                   });

                   // Show a snackbar with an undo option
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                       content: Text('Item deleted'),
                       action: SnackBarAction(
                         label: 'Undo',
                         onPressed: () {
                           // Implement undo functionality here if needed
                           // For example, you can add the item back to the list
                           // cartItems.insert(index, deletedItem); // Replace 'index' and 'deletedItem' accordingly
                         },
                       ),
                     ),
                   );
                 },
                 child: Container(
                   width: 380,
                   height: 100,
                   child: Stack(
                     children: [
                       Positioned(
                         left: 0,
                         top: 0,
                         child: Container(
                           width: 380,
                           height: 100,
                           decoration: BoxDecoration(color: Colors.white),
                         ),
                       ),
                       Positioned(
                         left: 15,
                         top: 14.18,
                         child: Container(
                           width: 64,
                           height: 71.82,
                           child: Stack(
                             children: [
                               Positioned(
                                 left: 0,
                                 top: 0,
                                 child: Container(
                                   width: 64,
                                   height: 64,
                                   child: Stack(
                                     children: [
                                       Positioned(
                                         left: 0,
                                         top: 0,
                                         child: Container(
                                           width: 64,
                                           height: 64,
                                           decoration: ShapeDecoration(
                                             color: Color(0xFFD2FFCF),
                                             shape: OvalBorder(),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 4,
                                 top: 15.82,
                                 child: Container(
                                   width: 55,
                                   height: 56,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/green-fresh-broccoli.png'),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Positioned(
                         left: 101,
                         top: 22,
                         child: Container(
                           width: 107,
                           height: 57,
                           child: Stack(
                             children: [
                               Positioned(
                                 left: 0,
                                 top: 0,
                                 child: Text(
                                   '\$2.22 x 4',
                                   style: TextStyle(
                                     color: Color(0xFF6CC51D),
                                     fontSize: 12,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 0,
                                 top: 39,
                                 child: Text(
                                   '1.50 lbs',
                                   style: TextStyle(
                                     color: Color(0xFF868889),
                                     fontSize: 12,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w400,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 0,
                                 top: 17,
                                 child: Text(
                                   'Fresh Broccoli',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Positioned(
                         left: 348,
                         top: 16,
                         child: Container(
                           width: 12.83,
                           height: 68,
                           child: Stack(
                             children: [
                               Positioned(
                                   left: 0,
                                   top: 0,
                                   child: Container(
                                     width: 12.83,
                                     height: 11.85,
                                     child: Stack(
                                       children: [
                                         Icon(CupertinoIcons.plus)
                                       ],
                                     ),
                                   )
                               ),
                               Positioned(
                                 left: 1,
                                 top: 28,
                                 child: Text(
                                   '5',
                                   style: TextStyle(
                                     color: Color(0xFF868889),
                                     fontSize: 15,
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                               Positioned(
                                   left: 0,
                                   top: 54,
                                   child: Container(
                                     width: 12.83,
                                     height: 11.85,
                                     child: Stack(
                                       children: [
                                         Icon(CupertinoIcons.minus)
                                       ],
                                     ),
                                   )
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
