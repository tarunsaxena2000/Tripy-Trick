import 'package:flutter/material.dart';
import 'package:flutter_application_1/date.dart';
import 'package:flutter_application_1/delhi.dart';
import 'package:flutter_application_1/nanital.dart';
import 'package:flutter_application_1/rishikesh.dart';
import 'package:flutter_application_1/srinagar.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}


Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
void main() {
  runApp(
    Destination(),
  );
}

class Destination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {

  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () =>    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Date())),
        ),
        title: Text("Select Destination"),
        
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Delhi'),
              shape: Border(
        bottom: BorderSide(),
    ),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(),
                  
                ),
                
              );
              
            },
          ),


          ListTile(
            
            title: Text('Rishikesh'),
              shape: Border(
        bottom: BorderSide(),
    ),
    
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail1(),
                ),
              );
            },
          ),

          ListTile(
            title: Text('Srinagar'),
              shape: Border(
        bottom: BorderSide(),
    ),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail3(),
                ),
              );
            },
          ),
           ListTile(
            title: Text('Nanital'),
              shape: Border(
        bottom: BorderSide(),
    ),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail2(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}