import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<Map<String, dynamic>> fetchData() async {
  // Make the API call
  Uri apiUrl = Uri.parse('https://fakestoreapi.com/products/2');
  http.Response response = await http.get(apiUrl);

  // Parse the response JSON
  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch data from API');
  }
}
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Map<String, dynamic> _data = {};

  @override
  void initState() {
    super.initState();
    fetchData().then((data) {
      setState(() {
        _data = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: _data.isNotEmpty
          ? Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${_data['title']}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Description: ${_data['description']}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Image.network(
              _data['image'],
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 8.0),
            Text(
              'Rating: ${_data['rating']['rate']}',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Rating: ${_data['price']}',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
