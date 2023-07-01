import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ForgetPassword.dart';
import 'RegisterScr.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
                        Text("Welcome Back" ,style: TextStyle(fontSize: 32),),
                        SizedBox(height: 5),
                         Text(

                           "Sign in with your email and password or continue with social media" , style: TextStyle(fontSize: 12),
                             textAlign: TextAlign.center
                         ),

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
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              suffixIcon: Icon(Icons.password),
                              labelText: "password",
                              hintText: "Enter your password"
                          ),
                        ),
                        SizedBox(height: 50),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [

                           Row(
                             children: [
                               Checkbox(
                                 value: isChecked,
                                 onChanged: (bool? value) { // This is where we update the state when the checkbox is tapped
                                   setState(() {
                                     isChecked = value!;
                                   });
                                 },
                               ),
                               Text("Rember Me"),
                             ],
                           ),
                            MaterialButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                            },
                            child: Text("ForgetPassword",textAlign: TextAlign.left,),
                            )
                           ],
                         ),
                       ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScr()));
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
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/icons/Chat bubble Icon.svg")),
                              IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/icons/Chat bubble Icon.svg")),
                              IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/icons/Chat bubble Icon.svg"))
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account",textAlign: TextAlign.start,),
                  MaterialButton(onPressed: (){},
                    child: Text("SinUp",style: TextStyle(color: Colors.orange),),
                  )
                ],
              )
            ],
          ),
        )
    ),
    );
  }
}
