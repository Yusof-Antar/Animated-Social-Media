import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
          body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialMediaWidget(
              iconUrl: 'https://cdn-icons-png.flaticon.com/128/20/20837.png',
              color: Color(0xFF2196F3),
            ),
            SocialMediaWidget(
              iconUrl: 'https://cdn-icons-png.flaticon.com/128/3128/3128212.png',
              color: Color(0xFF90CAF9),
            ),
            SocialMediaWidget(
              iconUrl: 'https://cdn-icons-png.flaticon.com/128/1384/1384031.png',
              color: Color(0xFFE040FB),
            ),
            SocialMediaWidget(
              iconUrl: 'https://cdn-icons-png.flaticon.com/128/1384/1384023.png',
              color: Color(0xFF4CAF50),
            ),
          ],
        ),
      )),
    );
  }
}

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({super.key, required this.iconUrl, required this.color});

  final String iconUrl;
  final Color color;

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  Color iconColor = Colors.grey[850]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(360),
        onTap: () {},
        onHover: (isHover) {
          if (isHover) {
            setState(() {
              iconColor = widget.color;
            });
          } else {
            setState(() {
              iconColor = Colors.grey[850]!;
            });
          }
        },
        child: CircleAvatar(
          backgroundColor: iconColor,
          radius: 30,
          child: Image.network(
            widget.iconUrl,
            filterQuality: FilterQuality.high,
            height: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
