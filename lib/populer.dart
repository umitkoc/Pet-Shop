import 'package:flutter/material.dart';

class Populer extends StatefulWidget {
  @override
  _PopulerState createState() => _PopulerState();
}

class _PopulerState extends State<Populer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopulerAnimal(),
          PopulerAnimal(),
          PopulerAnimal(),
          PopulerAnimal(),
        ],
      ),
    );
  }
}

class PopulerAnimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2018/08/kitten-440379.jpg?h=c8d00152&itok=1fdekAh2"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                          child: Text("Cat", style: TextStyle(fontSize: 22))),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text("Matilde",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  child: Center(
                    child: Text(
                        "Corrupti voluptatibus est. Aliquam et voluptatem quas recusandae laboriosam debitis eveniet. Vitae sit tenetur eum dignissimos. Ut velit maiores quae ipsa ab dolor.Modi architecto corrupti. Nihil nemo et enim excepturi. Qui culpa quia dolor consequatur quis exercitationem. Totam omnis maiores modi.Quibusdam autem id explicabo sequi non rerum explicabo quas error. Sunt eos rerum cumque quia. Et et sunt provident at error. Aperiam animi ad voluptate. Distinctio sint incidunt est dolores dolor et molestiae laboriosam qui. Dolores consectetur quibusdam et.",
                        style: TextStyle(fontSize: 20)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
