import 'package:flutter/material.dart';

class CustomNavigationTop extends StatefulWidget {
  const CustomNavigationTop({Key? key}) : super(key: key);

  @override
  State<CustomNavigationTop> createState() => _CustomNavigationTopState();
}

class _CustomNavigationTopState extends State<CustomNavigationTop> {



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
  
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text('MAIN', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('ADDIN INFO', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('BRANCH', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('E-ALUMNI', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('LINK', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('E-CAREER', style: TextStyle(color: Colors.white),),
              SizedBox(width: 30),
              Text('ADDIN HOMESTAY', style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

}






