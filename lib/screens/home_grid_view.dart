import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/controllers/firebase_controller.dart';
import 'package:flutter_animations/models/template.dart';
import 'package:flutter_animations/screens/screens.dart';

class HomeGridView extends StatefulWidget {
  const HomeGridView({super.key});

  @override
  State<HomeGridView> createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Template>>(
        future: FirebaseController().getAllTemplates(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              //TODO: handle .hasError
              return const SizedBox();
            } else if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500),
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final template = snapshot.data?[index];
                  if (template != null) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: HomeGridTile(
                        template: template,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              );
            } else {
              return const SizedBox();
            }
          } else {
            return const SizedBox();
          }
        });
  }
}
