import 'package:flutter/material.dart';

class StaticUiPage extends StatefulWidget {
  const StaticUiPage({super.key});

  @override
  State<StaticUiPage> createState() => _StaticUiPageState();
}

class _StaticUiPageState extends State<StaticUiPage> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  bgColor = Colors.white;
                  setState(() {

                  });
                },
                icon: Icon(Icons.refresh))
          ],
        ),
        backgroundColor: bgColor,
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        bgColor = Colors.green;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: (bgColor == Colors.green)
                              ? Border.all(color: Colors.black, width: 2)
                              : null,
                          color: Colors.green),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bgColor = Colors.red;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: (bgColor == Colors.red)
                              ? Border.all(color: Colors.black, width: 2)
                              : null,
                          color: Colors.red),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bgColor = Colors.orange;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: (bgColor == Colors.orange)
                              ? Border.all(color: Colors.black, width: 2)
                              : null,
                          color: Colors.orange),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bgColor = Colors.green;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: (bgColor == Colors.amber)
                              ? Border.all(color: Colors.black, width: 2)
                              : null,
                          color: Colors.amber),
                    ),
                  ),
                ])));
  }
}
