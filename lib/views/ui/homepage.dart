import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/views/shared/appstyle.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:SizedBox(
  height: MediaQuery.of(context).size.height,
  child: Stack(
    children: [
      Container(
        padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
        height:MediaQuery.of(context).size.height*0.4,
        decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets\images\sunny.jpg"),fit:BoxFit.fill)),
        
      )
    ],
  ),
   
),

    );
  }
}