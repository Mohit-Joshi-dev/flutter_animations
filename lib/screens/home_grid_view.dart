import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/controllers/firebase_controller.dart';
import 'package:flutter_animations/screens/screens.dart';

class HomeGridView extends StatefulWidget {
  const HomeGridView({super.key});

  @override
  State<HomeGridView> createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView> {
  @override
  void initState() {
    getAllTemplates();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: HomeGridTile(),
        );
      },
    );
  }

  void getAllTemplates() async {
    // print("Get Templates from firebase");
    // await FirebaseController().getAllTemplates();

    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference templates = firestore.collection('templates');

    await templates.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        print(doc.data());
      }
    }).catchError((error) => print("Failed to add user: $error"));
  }
}
