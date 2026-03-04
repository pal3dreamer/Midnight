import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddEditTaskSheet extends ConsumerWidget {
  const AddEditTaskSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
    backgroundColor: Color.fromRGBO(27,27,27,1),
    body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsetsGeometry.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text("Cancel",
            style: TextStyle(
              fontFamily: "DM Sans",
              color: Color(0xFF647FC0),
            ),),)),

             Padding(padding: EdgeInsetsGeometry.all(20),
            child: Text("New Task"),),
             Padding(padding: EdgeInsetsGeometry.all(20),
            child: Text("Done",
            style: TextStyle(
              fontFamily: "DM Sans",
              color: Color(0xFF647FC0)))),   
          ],
        ),
        SizedBox()
      ],
    ),
    );
  }
}