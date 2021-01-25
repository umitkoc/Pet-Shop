import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[50],
      height: MediaQuery.of(context).size.height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Animal(
              age: 5,
              name: "Cupy",
              price: 150.5,
              category: "cat",
              image:
                  "https://www.hillspet.com.tr/content/dam/cp-sites/hills/hills-pet/global/brands/vetessentials/HP_pods_1_VEcat_Kitten.jpg"),
          Animal(
            age: 2,
            category: "dog",
            image:
                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
            name: "golden",
            price: 1500,
          ),
          Animal(
              age: 5,
              name: "serius",
              price: 150.5,
              category: "cat",
              image:
                  "https://www.hillspet.com.tr/content/dam/cp-sites/hills/hills-pet/global/brands/vetessentials/HP_pods_1_VEcat_Kitten.jpg"),
          Animal(
            age: 2,
            category: "dog",
            image:
                "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg",
            name: "magnem",
            price: 1500,
          ),
          Animal(
              age: 5,
              name: "Cupy",
              price: 150.5,
              category: "cat",
              image:
                  "https://www.hillspet.com.tr/content/dam/cp-sites/hills/hills-pet/global/brands/vetessentials/HP_pods_1_VEcat_Kitten.jpg"),
          Animal(
            age: 2,
            category: "dog",
            image:
                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
            name: "golden",
            price: 1500,
          ),
          Animal(
              age: 5,
              name: "serius",
              price: 150.5,
              category: "cat",
              image:
                  "https://www.hillspet.com.tr/content/dam/cp-sites/hills/hills-pet/global/brands/vetessentials/HP_pods_1_VEcat_Kitten.jpg"),
          Animal(
            age: 2,
            category: "dog",
            image:
                "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg",
            name: "magnem",
            price: 1500,
          ),
        ],
      ),
    );
  }
}

class Animal extends StatelessWidget {
  final String image;
  final String category;
  final String name;
  final double price;
  final int age;

  Animal({this.category, this.image, this.name, this.price, this.age});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            color: Colors.red[100],
            height: MediaQuery.of(context).size.height * 0.2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            image: DecorationImage(
                                image: NetworkImage(this.image),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber,
                          ),
                          child: Center(child: Text("${this.category}")),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              this.name,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("age: ${this.age}")
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text("${this.price} ₺",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)))),
          )
        ],
      ),
    );
  }
}
