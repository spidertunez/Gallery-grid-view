import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> images = [
    'assets/images/img1.JPEG',
    'assets/images/img2.JPEG',
    'assets/images/img3.JPEG',
    'assets/images/img1.JPEG',
    'assets/images/img2.JPEG',
    'assets/images/img1.JPEG',
    'assets/images/img2.JPEG',
    'assets/images/img3.JPEG',
    'assets/images/img1.JPEG',
    'assets/images/img2.JPEG',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( backgroundColor: Colors.grey[300],
        appBar: AppBar( backgroundColor: Colors.grey[300]
          ,title: Text(
            'Gallary',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0), // Adjust the margin as needed
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
