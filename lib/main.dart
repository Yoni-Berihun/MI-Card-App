import 'package:flutter/material.dart';

void main() {
  // runApp() is the starting point for every Flutter app.
  // It takes a widget (here, MiApp) and makes it the root of the widget tree.
  runApp(MiApp());
}

// StatelessWidget means this widget does NOT store any state that changes over time.
class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget for a Material Design app.
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 96, 89),
        // SafeArea makes sure content doesn't overlap with notches, status bars, etc.
        body: SafeArea(
          child: Column(
            // Aligns children vertically in the center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar is often used for profile pictures
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/yoni.jpg"),
              ),

              // Main name text
              Text(
                'Yonatan B.',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Pacifico', // Custom font
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Job title text
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 15,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5, // Space between letters
                  fontWeight: FontWeight.bold,
                ),
              ),

              // A horizontal line divider with some space around it
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),

              // Card for phone number
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  // Icon displayed at the start of the row
                  leading: Icon(
                    Icons.phone,
                    color: const Color.fromARGB(255, 2, 50, 42),
                  ),
                  // Phone number text
                  title: Text(
                    '+2519 91 13 45 26',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Card for email address
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: const Color.fromARGB(255, 2, 50, 42),
                  ),
                  title: Text(
                    'yoniiberihun@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
