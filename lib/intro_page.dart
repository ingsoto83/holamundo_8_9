import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/fondo_app.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            color: Colors.black45,
            child: Text(
                "Tripper",
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Signatra"
                ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      )
    );
  }
}
