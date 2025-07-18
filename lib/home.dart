import 'package:flutter/material.dart';
import 'package:student_directory/services.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController Name = TextEditingController();
  TextEditingController Age = TextEditingController();
  TextEditingController Phoneno = TextEditingController();
  TextEditingController Department = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("STUDENT DIRECTORY APP"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Add student"),
                content: Column(
                  children: [
                    TextField(
                      controller: Name,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: Age,
                      decoration: InputDecoration(
                        labelText: "Age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: Phoneno,
                      decoration: InputDecoration(
                        labelText: "Phoneno",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: Department,
                      decoration: InputDecoration(
                        labelText: "Department",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        addstudent(
                          name: Name.text,
                          age: Age.text,
                          phoneno: Phoneno.text,
                          department: Department.text, Context: context,
                        );
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
