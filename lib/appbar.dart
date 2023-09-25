import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup Menu on AppBar"),
          backgroundColor: Colors.redAccent,
          actions: [

            PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
                itemBuilder: (context){
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                    ),

                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                    ),

                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                    ),
                  ];
                },
                onSelected:(value){
                  if(value == 0){
                    print("My account menu is selected.");
                  }else if(value == 1){
                    print("Settings menu is selected.");
                  }else if(value == 2){
                    print("Logout menu is selected.");
                  }
                }
            ),
          ],
        ),


        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),

                    ],

                  ),

                ),
                child: const Text('Show Dialog'),
              ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, 'list');
                  },
                  icon: Icon( // <-- Icon
                    Icons.navigate_next,
                    size: 24.0,
                  ),
                  label: Text('Next Page'), // <-- Text
                ),
              SizedBox.fromSize(
                size: Size(56, 56),
                child: ClipOval(
                  child: Material(
                    color: Colors.amberAccent,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.shopping_cart), // <-- Icon
                          Text("Buy"), // <-- Text
                        ],
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),

        )

    );
  }
}

