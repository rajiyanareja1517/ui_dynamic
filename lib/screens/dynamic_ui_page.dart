import 'package:flutter/material.dart';

class DynamicUiPage extends StatefulWidget {
  const DynamicUiPage({super.key});

  @override
  State<DynamicUiPage> createState() => _DynamicUiPageState();
}

class _DynamicUiPageState extends State<DynamicUiPage> {
  List<Map<String, dynamic>> boxs = [
    {'color': Colors.green},
    {'color': Colors.red},
    {'color': Colors.orange},
    {'color': Colors.amber}
  ];
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            setState(() {
              bgColor=Colors.white;
            });
          }, icon: Icon(Icons.refresh))
        ],
      ),
      backgroundColor: bgColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            boxs.length,
            (i) {
              return InkWell(
                onTap: () {
                  bgColor = boxs[i]['color'];
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: (boxs[i]['color'] == bgColor)
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                      color: boxs[i]['color']),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
