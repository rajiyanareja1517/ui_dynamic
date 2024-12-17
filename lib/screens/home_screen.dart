import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'static');
              },
                child: Text("Static UI",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'dynamic');
              },
                child: Text("Dynamic UI",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
