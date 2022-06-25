import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:oleh_shop_app/models/oleh.dart';

class NameSearch extends SearchDelegate<String> {
  final List<oleh> ListOleh;
  List<String> images = <String>[];
  List<String> names = <String>[];
  String result = "";

  NameSearch(this.ListOleh);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = ListOleh.where((olehItem) {
      return olehItem.nama.toLowerCase().contains(query.toLowerCase());
    });

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail',
                arguments: suggestions.elementAt(index));
          },
          child: ListTile(
            title: Text(
              suggestions.elementAt(index).nama,
            ),
            leading: CachedNetworkImage(
              imageUrl: 'http://10.0.2.2:8000/storage/' +
                  suggestions.elementAt(index).gambar,
              width: 50,
              height: 50,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = ListOleh.where((olehItem) {
      return olehItem.nama.toLowerCase().contains(query.toLowerCase());
    });

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail',
                arguments: suggestions.elementAt(index));
          },
          child: ListTile(
            title: Text(
              suggestions.elementAt(index).nama,
            ),
            leading: CachedNetworkImage(
              imageUrl: 'http://10.0.2.2:8000/storage/' +
                  suggestions.elementAt(index).gambar,
              width: 80,
              height: 80,
            ),
          ),
        );
      },
    );
  }
}
