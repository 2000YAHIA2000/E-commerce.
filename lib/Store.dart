import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
Future<List<Map<String, dynamic>>> fetchData() async {
  // Make the API call
  Uri apiUrl = Uri.parse('https://fakestoreapi.com/products');
  http.Response response = await http.get(apiUrl);

  // Parse the response JSON
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





class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body:

 SingleChildScrollView(
   child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration:BoxDecoration(
             borderRadius: BorderRadius.circular(30)
           ),
           child: Column(
               children: [
                 Container(
                   child: Row(
                     children: [
                       SizedBox(
                         width: 250,
                         child: TextField(
                             decoration: InputDecoration(
                                 filled: true,
                                 fillColor: Colors.grey,
                                 prefixIcon: Icon(Icons.search,color: Colors.black,),
                                 hintText: "Search product",
                                 enabledBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.grey),
                                     borderRadius: BorderRadius.circular(30)
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: (BorderSide(color: Colors.grey)),
                                   borderRadius: BorderRadius.circular(30),
                                 )
                             )
                         ),
                       ),
                       SizedBox(width: 10,),
                       Container(
                         width: 50,
                         decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius: BorderRadius.circular(30)
                         ),
                         child: IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/facebook-2.svg")),
                       ),
                       SizedBox(width: 10,),
                       Container(
                         decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius: BorderRadius.circular(30)
                         ),
                         child: IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/facebook-2.svg")),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 25,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                       alignment: Alignment.topLeft,
                       width: MediaQuery.of(context).size.width,
                       height: 100,
                       decoration:BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.indigo
                       ) ,
                       child: Column(
                         children: [
                           SizedBox(height: 10,),
                           Container(
                             width: MediaQuery.of(context).size.width,
                             child: Text("       A Summer Surprise" , style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.start,),
                           ),
                           SizedBox(height: 10,width: 5,),
                           Container(
                             width: MediaQuery.of(context).size.width,
                             child: Text("    Cash Back 20%" , style: TextStyle(fontSize: 24,color: Colors.white),textAlign: TextAlign.start,),
                           ),
                         ],
                       )
                   ),
                 ),
                 SizedBox(height: 25,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Column(
                       children: [
                         Container(
                           width: 65,
                           height: 69,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.black26
                           ),
                           child:
                           IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Flash Icon.svg")),
                         ),
                         Text("Flash "),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           width: 65,
                           height: 75,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.black26
                           ),
                           child:
                           IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Bill Icon.svg")),

                         ),
                         Text("Bill")
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           width: 65,
                           height: 75,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.black26
                           ),
                           child:
                           IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Game Icon.svg")),

                         ),
                         Text("Game")
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           width: 65,
                           height: 75,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.black26
                           ),
                           child:
                           IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Gift Icon.svg")),

                         ),
                         Text("Gift")
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           width: 65,
                           height: 75,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.black26
                           ),
                           child:
                           IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Bill Icon.svg")),
                         ),
                         Text("Bill")
                       ],
                     ),
                   ],
                 ),
                 Row(

                   children: [
                     Text("Special for You",style: TextStyle(fontSize: 18),),
                     SizedBox(width: 140,),
                     MaterialButton(onPressed: (){},
                       child: Text("See More",style: TextStyle(color: Colors.grey), ),
                     )
                   ],
                 ),
                 Container(
                   height: 100,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       InkWell(
                         child: Container(
                           width: 270,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             image: DecorationImage(
                               image: AssetImage("assets/images/Image Banner 2.png"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child:
                           Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 10,height: 10,),
                               Text("SmartPhone" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 24),),
                               Text("18 Brands" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 18),),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(width: 10,),
                       InkWell(

                         child: Container(
                           width: 270,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             image: DecorationImage(
                               image: AssetImage("assets/images/Image Banner 2.png"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child:
                           Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 10,height: 10,),
                               Text("SmartPhone" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 24),),
                               Text("18 Brands" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 18),),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(width: 10,),
                       InkWell(
                         child: Container(
                           width: 270,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             image: DecorationImage(
                               image: AssetImage("assets/images/Image Banner 2.png"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child:
                           Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 10,height: 10,),
                               Text("SmartPhone" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 24),),
                               Text("18 Brands" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 18),),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(width: 10,),
                       InkWell(
                         child: Container(
                           width: 270,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             image: DecorationImage(
                               image: AssetImage("assets/images/Image Banner 2.png"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child:
                           Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 10,height: 10,),
                               Text("SmartPhone" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 24),),
                               Text("18 Brands" ,textAlign: TextAlign.right,style: TextStyle(color:Colors.white,fontSize: 18),),
                             ],
                           ),
                         ),
                       ),
                     ],

                   ),
                 ),
                 Row(
                   children: [
                     Text("Popular product",style: TextStyle(fontSize: 18),),
                     SizedBox(width: 135,),
                     MaterialButton(onPressed: (){},
                       child: Text("See More",style: TextStyle(color: Colors.grey), ),
                     )
                   ],
                 ),
      Column(

        children: [
          _data.isNotEmpty
              ? SizedBox(
            height: 500.0, // Fixed height for the content
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100.0,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(_data[index]['image']),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _data[index]['description'],
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8),
                              ),
                              SizedBox(height: 4.0),
                              Text('\$${_data[index]['price']}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
              : Center(child: CircularProgressIndicator()),

        ],
      )
           ]
           ),
         ),
       ),
       //
       BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.search),
             label: 'Search',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: 'Profile',
           ),
         ],
       ),
       //
     ],

   ),

 ),
      );

  }
}

