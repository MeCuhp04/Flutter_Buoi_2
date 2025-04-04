import 'package:flutter/material.dart';
import 'package:flutter_buoi_2/widgets/custom_button.dart';
import 'package:flutter_buoi_2/widgets/custom_task.dart';

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
          //Sử dụng CustomTask
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTask(
                text: "Đi học",
                icon: Icon(Icons.radio_button_unchecked),
              ),
              CustomTask(
                text: "Đi làm",
                icon: Icon(Icons.radio_button_unchecked),
              ),
              CustomTask(
                text: "Tập thể dục",
                icon: Icon(Icons.radio_button_unchecked),
              ),
              CustomTask(
                text: "Làm bài tập",
                icon: Icon(Icons.radio_button_unchecked),
              ),
              CustomTask(
                text: "Chơi game",
                icon: Icon(Icons.radio_button_unchecked),
              ),
              CustomButton(
                text: "Add Task",
                icon: Icons.add,
              )
            ],
          ),

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
