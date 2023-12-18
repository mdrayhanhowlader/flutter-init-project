import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationTop extends StatefulWidget {
  const CustomNavigationTop({Key? key}) : super(key: key);

  @override
  State<CustomNavigationTop> createState() => _CustomNavigationTopState();
}

class _CustomNavigationTopState extends State<CustomNavigationTop> {
  String _selectedMenu = '';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMenuItem('UTAMA'),
              SizedBox(width: 30),
              _buildMenuItem('INFO ADDIN'),
              SizedBox(width: 30),
              _buildMenuItem('CAWANGAN'),
              SizedBox(width: 30),
              _buildMenuItem('E-ALUMNI'),
              SizedBox(width: 30),
              _buildMenuItem('PAUTAN'),
              SizedBox(width: 30),
              _buildMenuItem('E-KERJAYA'),
              SizedBox(width: 30),
              _buildMenuItem('ADDIN HOMESTAY'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String menuName) {
    return InkWell(
      onTap: () {
        // Handle menu item click, you can navigate to a different page here
        if (menuName.isNotEmpty) {
          Get.toNamed('/$menuName');
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            _selectedMenu = menuName;
          });
        },
        onExit: (_) {
          setState(() {
            _selectedMenu = '';
          });
        },
        child: InkResponse(
          splashColor: Colors.green, // Change color on mouse hover
          highlightColor: Colors.transparent,
          child: Text(
            menuName,
            style: TextStyle(
              color: _selectedMenu == menuName ? Colors.green : Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
