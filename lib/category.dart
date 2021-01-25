import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            ListCategory(
              image:
                  "https://www.willkommen.org.rs/wp-content/uploads/2019/12/cat-icon-11.png",
              name: "Cat",
              total: 25,
            ),
            ListCategory(
              image: "https://image.flaticon.com/icons/png/512/91/91544.png",
              name: "dog",
              total: 53,
            ),
            ListCategory(
              image:
                  "https://cdn4.iconfinder.com/data/icons/animal-6/100/9-512.png",
              name: "caretta",
              total: 10,
            ),
            ListCategory(
              image:
                  "https://library.kissclipart.com/20180831/ubq/kissclipart-rabbit-icon-png-clipart-domestic-rabbit-computer-i-83060392b035be57.png",
              name: "Rabbit",
              total: 3,
            ),
          ],
        ));
  }
}

class ListCategory extends StatelessWidget {
  final String image;
  final String name;
  final int total;
  ListCategory({this.image, this.total, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.red[100],
            border: Border.all(width: 0.1),
          ),
          height: MediaQuery.of(context).size.height * 0.07,
          child: Center(
              child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(this.image),
            ),
            title: Text(this.name),
            trailing: Text("${this.total}"),
          ))),
    );
  }
}
