import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget imageSection = Image.asset('assets/img/playa.jpg', width: size.width, height: size.height * 0.30,fit: BoxFit.cover);
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Puerto de Mazatlán", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
                Text("Sinaloa, México", style: TextStyle(fontSize: 16, color: Colors.grey[700]))
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
      ],
    );

    return Scaffold(
      body: Column(
        children: [
          imageSection,
          titleSection,
          buttonSection
        ],
      )
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          padding: EdgeInsets.only(top:8),
          child: Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color)),
        )
      ],
    );
  }
}
