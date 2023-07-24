import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);
  static const id = '/HomePage';
  final String name;

  @override
  State<HomePage> createState() => _HomePageState(this.name);
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final String name;

  List stock = [
    "Rice",
    "Wheat",
    "Maize",
    "Sugar",
    "Peanut",
    "Palm Oil",
    "Kerosine",
    "Jaggery"
  ];
  List stockQuantity = [
    "10kg",
    "18kg",
    "25Kg",
    "50Kg",
    "30Kg",
    "23Kg",
    "30Lit",
    "30Kg"
  ];
  List stock1 = [
    "Rice",
    "Sugar",
    "Peanut",
    "Palm Oil",
    "Kerosine",
  ];
  List stockQuantity1 = [
    "1kg",
    "8kg",
    "3Kg",
    "7Kg",
    "30Lit",
  ];
  _HomePageState(this.name);
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Welcome,$name"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(20),
            color: Color.fromARGB(255, 21, 207, 0),
            height: h * 0.4,
            width: w,
            child: Column(
              children: [
                Text("Quantity Left in Ration shop",
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: stock.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
//leading: const Icon(Icons.list),
                            trailing: Text(
                              stockQuantity[index],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 246, 246, 246),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            title: Text(stock[index],
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
            height: h * 0.4,
            width: w,
            child: Column(
              children: [
                Text("Quantity Recieved this Month",
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
        ],
      ),
    );
  }
}