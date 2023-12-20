import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade100),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PostDetailsScreen(
                                  date: "12 December 2023",
                                  title:
                                      'FESTIVAL SUKAN & KESENIAN ISLAM 2023 YAYASAN ADDIN',
                                  image: 'assets/images/cmsanugerah.jpg',
                                ),
                              ),
                            );
                          },
                          child: const PostCard(
                            date: '12 December 2023',
                            title:
                                'FESTIVAL SUKAN & KESENIAN ISLAM 2023 YAYASAN ADDIN',
                            image: 'assets/images/cmsanugerah.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PostDetailsScreen(
                                        date: '12 December 2023',
                                        title:
                                            'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                        image: 'assets/images/cmsmajlis.png',
                                      ),
                                    ),
                                  );
                                },
                                child: const PostCard(
                                  date: '12 December 2023',
                                  title:
                                      'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                  image: 'assets/images/cmsmajlis.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PostDetailsScreen(
                                        date: '12 December 2023',
                                        title:
                                            'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                        image: 'assets/images/cmsteacher.jpg',
                                      ),
                                    ),
                                  );
                                },
                                child: const PostCard(
                                  date: '12 December 2023',
                                  title:
                                      'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                  image: 'assets/images/cmstahfiz.jpg',
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PostDetailsScreen(
                                        date: '12 December 2023',
                                        title:
                                            'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                        image: 'assets/images/cmsteacher.jpg',
                                      ),
                                    ),
                                  );
                                },
                                child: const PostCard(
                                  date: '12 December 2023',
                                  title:
                                      'MAJLIS MENANDATANGANI PERJANJIAN SARE ANTARA YAYASAN ADDIN DAN YAYASA',
                                  image: 'assets/images/cmstahfiz.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatefulWidget {
  final String date;
  final String title;
  final String image;

  const PostCard({
    Key? key,
    required this.date,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.all(1),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailsScreen(
                title: widget.title,
                date: widget.date,
                image: widget.image,
              ),
            ),
          );
        },
        onHover: (hover) {
          setState(() {
            isHovered = hover;
          });
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            ClipRRect(
              // borderRadius: BorderRadius.circular(8.0),
              child: OverflowBox(
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Overlay Container
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(isHovered ? 0.0 : 0.3),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // Text Overlay
            Positioned(
              bottom: 26,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: isHovered ? Colors.green : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    widget.date,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostDetailsScreen extends StatelessWidget {
  final String date;
  final String title;
  final String image;

  const PostDetailsScreen({
    Key? key,
    required this.date,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display post details using the provided parameters
            Image.asset(
              image,
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 2),
            Text(
              date,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
