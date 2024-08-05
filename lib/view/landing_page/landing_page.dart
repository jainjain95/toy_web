import 'package:flutter/material.dart';
import 'package:marquee_list/marquee_list.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            color: Colors.black,
            child: MarqueeList(
              scrollDirection: Axis.horizontal, // By default, it's horizontal
              scrollDuration: const Duration(seconds: 1),
              children: [
                Text(
                    "A Flutter Marquee list widget to display a list of items in a marquee style. 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 80),
            color: Colors.pink.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Zestpire"),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                  children: [
                    Text("HOME"),
                    Text("WOMEN"),
                    Text("MEN"),
                    Text("COUPLE & LGBTQ")
                    
                  ],
                ),
                Icon(Icons.info)
              ],
            )
          )
        ],
      ),
    );
  }
}
