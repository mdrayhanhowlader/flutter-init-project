import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationTop extends StatefulWidget {
  const CustomNavigationTop({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomNavigationTopState createState() => _CustomNavigationTopState();
}

class _CustomNavigationTopState extends State<CustomNavigationTop> {
  String currentButton = '';
  bool isHovering = false;

  void _handleHover(String buttonText) {
    setState(() {
      currentButton = buttonText;
      isHovering = true;
    });
  }

  void _handleHoverExit() {
    setState(() {
      isHovering = false;
    });
  }

  void _handleMenuClick(String route) {
    Get.toNamed(route);
    setState(() {
      isHovering = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButton('MAIN', '/home'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('ADDIN INFO', '/addin-info'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('BRANCH', '/branch'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('E-ALUMNI', '/e-alumni'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('LINK', '/link'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('E-CAREER', '/e-career'),
              const SizedBox(
                width: 20,
              ),
              _buildButton('ADDIN HOMESTAY', '/addin-homestay'),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String buttonText, String route) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentButton = buttonText;
          isHovering = !isHovering;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          _handleHover(buttonText);
        },
        onExit: (_) {
          _handleHoverExit();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            color: currentButton == buttonText
                ? Colors.green // Change color when button is hovered
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
