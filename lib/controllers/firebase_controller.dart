import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animations/models/models.dart';

class FirebaseController {
  CollectionReference ref = FirebaseFirestore.instance.collection('templates');

  Future<List<Template>> getAllTemplates() async {
    List<Template> templates = [];
    await ref.get().then((QuerySnapshot querySnapshot) {
      templates = querySnapshot.docs.map((doc) {
        return Template.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    }).catchError((error) {
      debugPrint("Failed to get templates: $error");
    });
    return templates;
  }
}
