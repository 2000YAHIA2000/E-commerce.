import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Store.dart';


class CompletePro extends StatefulWidget {
  const CompletePro({super.key});

  @override
  State<CompletePro> createState() => _CompleteProState();
}

class _CompleteProState extends State<CompletePro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(


                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50),
                        Text("Complete Profile" ,style: TextStyle(fontSize: 32),),
                        SizedBox(height: 5),
                        Text("complte your detals here"),
                        SizedBox(height: 100),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              suffixIcon: Icon(Icons.person),
                              labelText: "First Name",
                              hintText: "Enter your first name"
                          ),
                        ),

                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              suffixIcon: Icon(Icons.person),
                              labelText: "Last Name",
                              hintText: "Enter your last name"
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)
                            ,labelText: "Phone Number",
                            suffixIcon: Icon(Icons.phone),
                            hintText: " Enter your phone number",

                          ),
                        ),SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)
                            ,labelText: "Location",
                            suffixIcon: Icon(Icons.location_city),
                            hintText: " Enter your Location",

                          ),
                        ),SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Store()));
                              },
                                minWidth: 1000,
                                height: 50,
                                shape: StadiumBorder(),
                                color: Colors.orange,
                                child: Text("cilick",style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100,),


                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    ),
    );
  }
}
