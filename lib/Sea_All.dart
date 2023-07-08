import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchData() async {
  Uri apiUrl = Uri.parse('https://fakestoreapi.com/products');
  http.Response response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map<Map<String, dynamic>>((item) {
      return {
        'image': item['image'],
        'description': item['description'],
        'price': item['price'],
      };
    }).toList();
  } else {
    throw Exception('Failed to fetch data from API');
  }
}

class Sea_All extends StatefulWidget {
  const Sea_All({Key? key}) : super(key: key);

  @override
  State<Sea_All> createState() => _Sea_AllState();
}

class _Sea_AllState extends State<Sea_All> {
  List<Map<String, dynamic>> _data = [];

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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _data.isNotEmpty
                  ? Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 6690 , // Fixed height for the content
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: _data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 100.0,
                          child: Card(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  _data[index]['image'],
                                  width: 250,
                                  height: 250,
                                  fit: BoxFit.scaleDown,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _data[index]['description'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(height: 4.0),
                                      Text(
                                          '\$${_data[index]['price']}'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
                  : Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
