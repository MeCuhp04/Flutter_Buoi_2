import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "My Todo App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
            child: Card(
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Column(
                        children: [
                          Text(
                            "Work 1",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Done"),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Column(
                        children: [
                          Text(
                            "Work 2",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Done"),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Work 3",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Done"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
