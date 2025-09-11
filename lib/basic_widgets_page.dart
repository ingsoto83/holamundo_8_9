import 'package:flutter/material.dart';

class BasicWidgetsPage extends StatelessWidget {
  const BasicWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Básicos"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: FlutterLogo(size: 100,),
            ),
            Text("Prog. Disp. Móviles",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text("Clave Mat: Dh7A",style: TextStyle(fontSize: 24),),
            Text("Docente: Alejandro Soto",style: TextStyle(fontSize: 24),),
            Text("Alumnos: 12",style: TextStyle(fontSize: 24),),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.add, size: 28,),
                          ),
                          Text("Alta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white, /*shape: RoundedRectangleBorder()*/),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.close,size: 28,),
                        ),
                        Text("Baja", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.list, size: 28,),
                        ),
                        Text("Lista", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
