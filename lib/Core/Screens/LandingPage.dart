import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;
  List<String> itemData = ["Beach", "Hotelwwwwwwwwqqqqqqq", "Home", "Park"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Container(
          margin: EdgeInsets.all(3),
          height: 180,
          color: Colors.white,
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Positioned(
              width: 230,
              right: 10,
              top: 10,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemData.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      itemData[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    );
                  }),
            ),
            AnimatedPositioned(
                top: selected ? 0 : 0,
                bottom: selected ? 0 : 0,
                left: selected ? 0 : 0,
                right: selected ? 250 : 0,
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage("assets/images/galexy.jpg"), fit: BoxFit.cover)),
                      padding: EdgeInsets.all(15),
                      child: Center(child: Text("hello"))),
                ))
          ])),
      bottomNavigationBar: BottomNavigationBar(

      ),
    );
  }
}
