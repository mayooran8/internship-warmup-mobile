import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Profile App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showSkills = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Circle avatar with fallback
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                "Y", // Your initial or any placeholder text
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              // If you later add an asset, you can replace child with:
              // backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            SizedBox(height: 15),
            Text(
              "Mayooran",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showSkills = !showSkills;
                });
              },
              child: Text(showSkills ? "Hide Qualifications" : "See Qualifications"),
            ),

            SizedBox(height: 20),

            if (showSkills)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Flutter ", style: TextStyle(fontSize: 18)),
                  Text("• HTML, CSS, PHP, SQL", style: TextStyle(fontSize: 18)),
                  Text("• Java & C#", style: TextStyle(fontSize: 18)),
                  Text("• Database Management", style: TextStyle(fontSize: 18)),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
