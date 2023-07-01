import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'CompletePro.dart';

class RegisterScr extends StatefulWidget {
  const RegisterScr({super.key});

  @override
  State<RegisterScr> createState() => _RegisterScrState();
}

class _RegisterScrState extends State<RegisterScr> {
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
                     SizedBox(height: 100),
                     Text("Register Account" ,style: TextStyle(fontSize: 32),),
                     SizedBox(height: 5),
                     Text("complte your detals here"),
                     SizedBox(height: 100),
                           TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                 suffixIcon: Icon(Icons.email),
                                 labelText: "Email",
                                 hintText: "Enter your email"
                             ),
                           ),

                     SizedBox(height: 20),
                           TextField(
                               obscureText: true,
                             decoration: InputDecoration(
                                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                 suffixIcon: Icon(Icons.password),
                                 labelText: "Password",
                                 hintText: "Enter your password"
                             ),
                           ),
                     SizedBox(height: 20),
                           TextField(
                               obscureText: true,
                             decoration: InputDecoration(
                                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)
                               ,labelText: "Confirm",
                                 suffixIcon: Icon(Icons.password),
                                 hintText: " Renter your password",

                             ),
                           ),SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                           children: [
                             MaterialButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> CompletePro()));
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/google-icon.svg")),
                             IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/facebook-2.svg")),
                             IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/twitter.svg")),
                           ],
                         ),
                      ),

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

