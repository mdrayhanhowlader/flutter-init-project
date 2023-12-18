import 'dart:async';

import 'package:flutter/material.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider({Key? key}) : super(key: key);

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  final List<String> images = [
    '../../../../../assets/images/cmsteacher.jpg',
    '../../../../../assets/images/cmstahfiz.jpg',
    '../../../../../assets/images/cmspalestine.jpg',
  ];

  late PageController _pageController;
  int currentIndex = 0;
  bool isHovered = false;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (currentIndex < images.length - 1) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 5000),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.jumpToPage(0);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 570,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
              ArrowButton(
                isLeft: true,
                onTap: () {
                  if (currentIndex > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 5000),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              ArrowButton(
                isLeft: false,
                onTap: () {
                  if (currentIndex < images.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 5000),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
        Container(
          child: Image.asset(
            '../../../../../assets/images/cms_small_banner_bottom.jpg',
          ),
        )
      ],
    );
  }
}

class ArrowButton extends StatefulWidget {
  final bool isLeft;
  final VoidCallback? onTap;

  const ArrowButton({
    Key? key,
    required this.isLeft,
    this.onTap,
  }) : super(key: key);

  @override
  _ArrowButtonState createState() => _ArrowButtonState();
}

class _ArrowButtonState extends State<ArrowButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true, // Always visible
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isHovered
                  ? Colors.black.withOpacity(0.5)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              widget.isLeft ? Icons.arrow_back : Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
