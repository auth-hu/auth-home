// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_cast, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StreamBuilderData extends StatefulWidget {
  final String collection;
  StreamBuilderData({super.key, required this.collection});

  @override
  State<StreamBuilderData> createState() => _StreamBuilderDataState();
}

class _StreamBuilderDataState extends State<StreamBuilderData> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection(widget.collection).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text("حدث خطأ"));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData) {
          return Center(child: Text("لا يوجد بيانات"));
        }

        final docs = snapshot.data!.docs;

        return ListView.builder(
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data() as Map<String, dynamic>;

            return ListTile(
              title: Text(data['name']),
              subtitle: Text(data['count']),
            );
          },
        );
      },
    );
  }
}
