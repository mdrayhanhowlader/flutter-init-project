import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubMenuItem {
  final String name;
  final String route;

  SubMenuItem({required this.name, required this.route});
}

class MenuItem {
  final String name;
  final List<SubMenuItem> subItems;

  MenuItem({required this.name, required this.subItems});
}

class ApiHandlingView extends StatefulWidget {
  const ApiHandlingView({Key? key}) : super(key: key);

  @override
  _ApiHandlingViewState createState() => _ApiHandlingViewState();
}

class _ApiHandlingViewState extends State<ApiHandlingView> {
  MenuItem? hoveredItem;
  bool isSubMenuHovered = false;

  @override
  Widget build(BuildContext context) {
    List<MenuItem> dummyMenuData = [
      MenuItem(
        name: "Home",
        subItems: [
          SubMenuItem(name: 'Home 1', route: '/home'),
          SubMenuItem(name: 'Home 2', route: '/home'),
          SubMenuItem(name: 'Home 3', route: '/home'),
          SubMenuItem(name: 'Home 4', route: '/home'),
        ],
      ),
      MenuItem(
        name: "About",
        subItems: [
          SubMenuItem(name: 'About 1', route: '/faq'),
          SubMenuItem(name: 'About 2', route: '/faq'),
          SubMenuItem(name: 'About 3', route: '/faq'),
          SubMenuItem(name: 'About 4', route: '/faq'),
        ],
      ),
      MenuItem(
        name: "Contact",
        subItems: [
          SubMenuItem(name: 'Contact 1', route: '/home'),
          SubMenuItem(name: 'Contact 2', route: '/home'),
          SubMenuItem(name: 'Contact 3', route: '/home'),
          SubMenuItem(name: 'Contact 4', route: '/home'),
        ],
      ),
      MenuItem(
        name: "FAQ",
        subItems: [
          SubMenuItem(name: 'FAQ 1', route: '/faq1'),
          SubMenuItem(name: 'FAQ 2', route: '/faq2'),
          SubMenuItem(name: 'FAQ 3', route: '/faq3'),
          SubMenuItem(name: 'FAQ 4', route: '/faq4'),
        ],
      ),
      MenuItem(
        name: "Services",
        subItems: [
          SubMenuItem(name: 'Service 1', route: '/service1'),
          SubMenuItem(name: 'Service 2', route: '/service2'),
          SubMenuItem(name: 'Service 3', route: '/service3'),
          SubMenuItem(name: 'Service 4', route: '/service4'),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //   child: CustomPaint(
            //     painter: CurvePainter(),
            //     size: Size(200, 100),
            //   ),
            // ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var item in dummyMenuData)
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        hoveredItem = value ? item : null;
                        isSubMenuHovered = false;
                      });
                    },
                    onTap: () {
                      Get.toNamed('/${item.name.toLowerCase()}');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 18,
                          decoration: hoveredItem == item
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (hoveredItem != null && !isSubMenuHovered)
              Positioned(
                top:
                    50.0, // Adjust this value to position the submenu vertically
                left: dummyMenuData.indexOf(hoveredItem!) *
                    100.0, // Adjust this value to position the submenu horizontally
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isSubMenuHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isSubMenuHovered = false;
                      hoveredItem = null;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: hoveredItem!.subItems.map((subItem) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(subItem.route);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(subItem.name),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.8, 0)
      ..lineTo(size.width, size.height * 0.2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
