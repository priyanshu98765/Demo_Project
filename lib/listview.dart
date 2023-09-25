import 'package:flutter/material.dart';
class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.lime[800],
              child: const Center(child: Text('Shweta')),
            ),
            Container(
              height: 50,
              color: Colors.red[600],
              child: const Center(child: Text('Aditi')),
            ),
            Container(
              height: 50,
              color: Colors.green[400],
              child: const Center(child: Text('Shreya')),
            ),
            Container(
              height: 50,
              color: Colors.deepPurple[200],
              child: const Center(child: Text('Aashika')),
            ),
            Container(
              height: 50,
              color: Colors.brown[800],
              child: const Center(child: Text('Yosh')),
            ),
            FloatingActionButton.extended(

              label: Text('After Page'), // <-- Text
              backgroundColor: Colors.black,

              icon: Icon( // <-- Icon
                Icons.navigate_next,
                size: 24.0,


              ),
              onPressed: () {
                Navigator.pushNamed(context, 'calender');
              },
            ),
            FloatingActionButton.extended(
              label: Text('Before Page'), // <-- Text
              backgroundColor: Colors.black,
              icon: Icon( // <-- Icon
                Icons.navigate_before_sharp,
                size: 24.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'dashboard');
              },
            ),
          ],
        ),

      ),

    );
  }
}