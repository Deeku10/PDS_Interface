import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List stock1 = [
    "Rice",
    "Wheat",
    "Maize",
    "Sugar",
    "Peanut",
    "Palm Oil",
    "Kerosine",
    "Jaggery"
  ];
  List stockQuantity1 = [
    "10kg",
    "18kg",
    "25Kg",
    "50Kg",
    "30Kg",
    "23Kg",
    "30Lit",
    "30Kg"
  ];
  List stock2 = [
    "Rice",
    "Wheat",
    "Maize",
    "Sugar",
    "Peanut",
    "Palm Oil",
    "Kerosine",
    "Jaggery"
  ];
  List stockQuantity2 = [
    "100kg",
    "1080kg",
    "205Kg",
    "500Kg",
    "380Kg",
    "293Kg",
    "380Lit",
    "360Kg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            color: Colors.red,
            height: 50,
            width: 250,
            child: TextButton(
              child: Text(
                'Request to Supplier',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(20),
            color: Color.fromARGB(255, 21, 207, 0),
            height: 400,
            width: 1000,
            child: Column(
              children: [
                Text("Stock Left",
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: stock1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
//leading: const Icon(Icons.list),
                            trailing: Text(
                              stockQuantity1[index],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 246, 246, 246),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            title: Text(stock1[index],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)));
                      }),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(20),
            color: Color.fromARGB(255, 21, 207, 0),
            height: 400,
            width: 1000,
            child: Column(
              children: [
                Text("Stock Delivered",
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: stock2.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
//leading: const Icon(Icons.list),
                            trailing: Text(
                              stockQuantity2[index],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 246, 246, 246),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            title: Text(stock2[index],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
