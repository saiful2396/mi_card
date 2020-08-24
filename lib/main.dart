import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiCard(),
    );
  }
}

class MiCard extends StatefulWidget {
  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: ExactAssetImage('images/saiful.jpg'),
            ),
          ),
          Text('Saiful Islam', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Pacifico"),),
          Text('FLUTTER DEVELOPER', style: TextStyle(
              color: Colors.teal.shade100, letterSpacing: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro"),),
          Divider(height: 30, color: Colors.teal.shade200, thickness: 2,indent: 120, endIndent: 120,),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.teal,),
              title: Text('+880 1234 567891', style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color:Colors.teal.shade900, fontSize: 16)),
            ),
          ),
          SizedBox(height: 10,),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ListTile(
              leading: Icon(Icons.email, color: Colors.teal,),
              title: Text('saiful@email.com', style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color:Colors.teal.shade900, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
