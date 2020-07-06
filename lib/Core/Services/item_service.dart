import 'dart:convert';
import 'dart:io';

import 'package:aavmobile/Core/Models/items.dart';
import 'package:http/http.dart' as http;

class ItemService {
  Future<List<Item>> getItems() async {
    try {
      final response = await http.get('https://jsonplaceholder.typicode.com/photos');
      final jsonBody = jsonDecode(response.body);
      List<Item> item = [];
      print("jsonResponse ${jsonBody.runtimeType}");
      for (var i in jsonBody) {
        print("runtime type ${i.runtimeType}");
        item.add(Item.fromJson(i));
      }
      print("item length ${item.length}");
      return item;
    }on HttpException{
      print("i got an exception");
    }
  }
}