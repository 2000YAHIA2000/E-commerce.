import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 1.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.contain)
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 2.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.fill)
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 3.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.fill )
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 1.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.contain)
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 2.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.fill)
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                InkWell(
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey
                                            ),
                                            child: Image.asset("assets/images/Image Popular Product 3.png",width: 300,
                                                height: 100,
                                                fit:BoxFit.fill )
                                        ),
                                        Container(
                                          width:150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Wireless Controller for  for PS4"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.grey
                                          ),
                                          child: Row(

                                            children: [
                                              Text("\$68.99",style: TextStyle(color: Colors.orange),),
                                              SizedBox(width: 70,),
                                              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
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
                      ]
                  ),
                ),
              ),
              //
              //
            ],

          ),

        ),
      );

  }
}

