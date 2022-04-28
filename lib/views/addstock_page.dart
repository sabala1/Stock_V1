import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStockPage extends StatefulWidget {
  const AddStockPage({Key? key}) : super(key: key);

  @override
  State<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends State<AddStockPage> {
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    child: SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 15,
                child: TextFormField(
                  decoration: const InputDecoration(
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    prefixIcon: Icon(Icons.shopping_cart),
                    labelText: 'รายการสินค้า (Item)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 15,
                child: TextFormField(
                  decoration: const InputDecoration(
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15, left: 5, right: 0, bottom: 15),
                      child: SizedBox(
                        height: 4,
                        //child: Image.asset('images/Bag-Quantity-icon.png'),
                        child: Icon(Icons.shopping_basket),
                      ),

                    ),
                    labelText: 'จำนวน (Qty)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 150, 66, 131),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => AddStockPage(),
                        //   ),
                        // );
                        print('Save Stock');
                      },
                      child: Center(
                        child: Text(
                          'บันทึก',
                          style: GoogleFonts.kanit(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
