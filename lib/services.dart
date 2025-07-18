import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> addstudent({
  required String name,
  required String age,
  required String phoneno,
  required String department,
  required BuildContext Context,
}) async {
  await FirebaseFirestore.instance.collection("students").add(
      {"Name": name, "Age": age, "Phoneno": phoneno, "Department": department});

}
