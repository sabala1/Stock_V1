import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_v1/views/addstock_page.dart';
import 'package:stock_v1/views/login_page.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
                print('Sign up');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AddStockPage(),
                            ),
                          );
                          print('Add Stock');
                        },
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'Add ',
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Item',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Qty',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Edit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Delete',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Mohit'),
                    ),
                    DataCell(
                      Text('23'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Akshay'),
                    ),
                    DataCell(
                      Text('25'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('Deepak'),
                    ),
                    DataCell(
                      Text('29'),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มแก้ไข');
                        },
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 24,
                        //  color: ConstantData.kGreyTextColor,
                        //color: Colors.red,
                        onPressed: () {
                          print('กดปุ่มลบ');
                        },
                      ),
                    ),
                  ],
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
