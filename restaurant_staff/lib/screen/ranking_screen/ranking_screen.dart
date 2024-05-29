import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({super.key});

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body:  Center(
        child:  Text("Upcoming...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
      ),
    ));
  }
}
