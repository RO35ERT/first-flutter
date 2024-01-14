import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}


var url = "https://jsonplaceholder.typicode.com/photos";
var data;
class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async{
    var myUrl = Uri.parse(url);
    var response = await http.get(myUrl);
    data = json.decode(response.body);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: data!=null ? Center(

        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context,index){
            return ListTile(
              title: Text(data[index]['title']),
              leading: Image.network(data[index]['url']),
              contentPadding: const EdgeInsets.all(10),
            );
          },
          itemCount: data.length,
        ),
      ):const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}