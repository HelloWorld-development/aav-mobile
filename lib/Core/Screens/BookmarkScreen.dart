import 'package:aavmobile/Core/Models/items.dart';
import 'package:aavmobile/Core/Services/item_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BookmarkState();
}

class BookmarkState extends State<BookmarkScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<Item>> _getProductItems() {
    ItemService itemService = ItemService();
    return itemService.getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmark"),
        leading: Icon(Icons.bookmark_border),
        actions: <Widget>[Icon(Icons.person)],
      ),
      body: FutureBuilder(
        future: _getProductItems(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: Text("loading..."),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid)
                    ),
                    child: Text("${snapshot.data[index].title}"),
                  );
                });
          }
        },
      ),
    );
  }
}
