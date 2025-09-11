import 'package:flutter/material.dart';

class HolaMundoPage extends StatefulWidget {
  HolaMundoPage({super.key});

  @override
  State<HolaMundoPage> createState() => _HolaMundoPageState();
}

class _HolaMundoPageState extends State<HolaMundoPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo Flutter"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          setState(() {});
          print(count);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Text("Presionaste el botón $count veces", style: TextStyle(fontSize: 30.0))
      ),
    );
  }
}
