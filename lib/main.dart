import 'package:flutter/material.dart';
import 'package:tugasdayatiga/listhorizontal_page.dart';
import 'package:tugasdayatiga/simplegrid_page.dart';

import 'registerform_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => RegisterForm()
                  ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Register Form Tugas'),
              ),
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ListHorizontal()
                  ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Horizontal List'),
              ),
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SimpleGridView()
                  ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Simple Grid'),
              ),
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SimpleGridView()
                  ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Custom Grid'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

