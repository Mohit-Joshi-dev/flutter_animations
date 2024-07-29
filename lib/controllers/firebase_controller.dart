import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_animations/models/models.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseController {
  CollectionReference templates =
      FirebaseFirestore.instance.collection('templates');

  Future<List<Template>> getAllTemplates() async {
    await templates.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        print(doc);
      }
    }).catchError((error) => print("Failed to add user: $error"));
    return [];
  }
}
