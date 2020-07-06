class Item {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Item(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Item.fromJson(Map<String, dynamic> item){
    return Item(item['albumId'],item['id'],item['title'],item['url'],item['thumbnailUrl']);
  }
}
