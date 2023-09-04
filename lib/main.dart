import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Flutter Clock'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          level += 1;
        });},
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NAME',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 10.0,
                  letterSpacing: 2.0,
                  color: Colors.grey,
                  // fontFamily:
                ),
              ),
            ),
            Text(
              'Mateusz',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  // fontFamily:
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'LEVEL',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 10.0,
                  letterSpacing: 2.0,
                  color: Colors.grey,
                  // fontFamily:
                ),
              ),
            ),
            Text(
              '$level',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  // fontFamily:
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
