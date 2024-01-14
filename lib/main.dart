import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    )
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
      ),
      body: Center(
        child: Container(

        ),
      ),
      drawer:  Drawer(
         child: ListView(
           padding: const EdgeInsets.all(0),
           children: const [
             UserAccountsDrawerHeader(
                 accountName: Text("Phiri Robert"),
                 accountEmail:Text("robert@gmail.com")
             ),
             ListTile(
               leading: Icon(Icons.person),
               title: Text("Full Name"),
               subtitle: Text("Phiri Robert"),
             ),
             ListTile(
               leading: Icon(Icons.email),
               title: Text("Email"),
               subtitle: Text("robert@gmail.com"),
             )
           ],
         ),
      ),
    );
  }
}
