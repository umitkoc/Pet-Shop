import 'package:flutter/material.dart';
import 'package:marketting/category.dart';
import 'package:marketting/populer.dart';
import 'package:marketting/product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _options;
  var _index;

  @override
  void initState() {
    super.initState();
    _index = 0;
    _options = [Populer(), Product(), Category()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: appbars(),
      body: bodys(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.red[100],
          selectedItemColor: Colors.green,
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "populer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.pets_rounded), label: "product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "category")
          ],
        ),
      ),
    );
  }

  Center bodys() => Center(child: _options[_index]);

  AppBar appbars() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.red[200],
      title: Text(
        "Pet Shop",
        style: TextStyle(color: Colors.amber[500], fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
