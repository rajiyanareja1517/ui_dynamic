# ui_dynamic

A new Flutter project.

* For Mobile: https://github.com/rajiyanareja1517/ui_dynamic

Download or clone this repo by using the link below:

```
git remote add origin https://github.com/rajiyanareja1517/ui_dynamic.git
```

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- screens/
|- main.dart
```

### screens

This directory screens all the view of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- DynamicUiPage.dart
|- HomeScreen.dart
|- StaticUiPage.dart

```

### StaticUiPage
This is static ui code.

```dart
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


```

### DynamicUiPage
This is dynamic ui code.

```dart
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

```

### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';
import 'package:ui_dynamic/screens/dynamic_ui_page.dart';
import 'package:ui_dynamic/screens/home_screen.dart';

import 'screens/static_ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    routes: {
        'static':(context)=> StaticUiPage(),
        '/':(context)=> HomeScreen(),
      'dynamic':(context)=>DynamicUiPage(),
    },
    );
  }
}


```
![Screenshot_20241217_104333](https://github.com/user-attachments/assets/2fe6ea65-7ed8-4439-a1b9-7b0191515204)
![Screenshot_20241217_104358](https://github.com/user-attachments/assets/cd952178-38aa-42ec-be35-b345a94cdbc8)



https://github.com/user-attachments/assets/c885499f-00a0-4859-87c1-df132fe8380e



## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.

