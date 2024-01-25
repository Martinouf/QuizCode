import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BienvenuePage extends StatelessWidget {
  const BienvenuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'QUIZ CODE',
              style: GoogleFonts.acme(
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.star, color: Colors.white),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Bienvenue sur Quiz Code,',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'un petit jeu pour apprendre le code facilement!',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Action du premier bouton
                    },
                    child: Text('Inscription'),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Action du deuxième bouton
                    },
                    child: Text('Connexion'),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
