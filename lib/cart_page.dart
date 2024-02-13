import 'package:figma/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey,
      // ),
      body: SafeArea(
        // child: CartEmpty(),
        // children: [
        child: CartNoEmpty(),
        // CartItem(),

        //    Container(
        //     height: 700,
        //     padding: EdgeInsets.only(top: 15),
        //     decoration: BoxDecoration(
        //       color: Color(0xFFEDECF2),
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(35),
        //         topRight: Radius.circular(35),

        //       )
        //     ),
        //     child: Column(children: [
        //       CartItem(),
        //     ]),
        //    )
        // ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60.0,
        color: Colors.black,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Column(
                children: [
                  SizedBox(height: 5),
                  Text(
                    "BUY NOW",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.tenorSans(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}