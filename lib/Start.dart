import 'dart:ffi';
import 'package:ecommerce/RegisterScr.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'CompletePro.dart';


class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  PageController controller = new PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.grey.shade300,
              shadowColor: Colors.white,
            ),
            body: Container(
              padding: const EdgeInsets.only(top: 40),
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Text("TOKOTO",
                      style: TextStyle(
                          color: Color(0xFFff7643),
                          fontSize: 35,
                          fontFamily: "Muli")),
                  Text(
                    "Welcome to Tokoto, Let's shop!",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  // SizedBox(height: 60,),
                  // Image.asset("assets/images/splash_1.png",width: 230,height: 400,),

                  SizedBox(
                    width: 400,
                    height: 400,
                    child: PageView.builder(

                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (_, index) => Container(
                        margin: EdgeInsets.only(right: 20,left: 20),
                        height: 300,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(image: AssetImage("assets/images/splash_${index+1}.png")),
                          // borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(controller: controller, count: 3,effect: ExpandingDotsEffect(activeDotColor:Color(0XFFff7643),dotColor: Colors.grey.shade200,dotHeight: 10,dotWidth: 10),),
                  SizedBox(height: 150,),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScr()));
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
            ));
  }
}