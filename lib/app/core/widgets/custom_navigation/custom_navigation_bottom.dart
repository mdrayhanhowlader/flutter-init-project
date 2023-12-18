import 'package:flutter/material.dart';

class CustomNavigationBottom extends StatefulWidget {
  const CustomNavigationBottom({super.key});

  @override
  State<CustomNavigationBottom> createState() => _CustomNavigationBottomState();
}

class _CustomNavigationBottomState extends State<CustomNavigationBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 100,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: EdgeInsets.only(
          left: 0,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'E-INFAQ',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 50),
              Text(
                'KOLABORATIF',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 50),
              Text(
                'MOHONZAKAT',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 50),
              Text(
                'FAQ',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 50),
              Text(
                'KEDAI ADDIN',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 50),
            ],
          )),
        ),
      ),
    );
  }
}
