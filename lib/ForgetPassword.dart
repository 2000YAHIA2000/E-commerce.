import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.center,
              //decoration: ,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                       Text("ForgetPassword",style: TextStyle(fontSize: 32),),
                  SizedBox(height: 20,),
                  Text("Please enter your e-mail and we will send you a link.To return to your account",textAlign: TextAlign.center),
                  SizedBox(height: 50,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Enter your email"
                    ),
                  ),
                  SizedBox(height: 50,),
                  MaterialButton(onPressed: (){},
                  child: Text("Cilck"),
                    minWidth: 1000,
                    height: 50,
                    shape: StadiumBorder(),
                    color: Colors.orange,
                  ),
                  SizedBox(height: 25,),
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
            ),
          ),
        )
    );
  }
}
