import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SnacbarExample extends StatefulWidget {
  const SnacbarExample({Key? key}) : super(key: key);

  @override
  State<SnacbarExample> createState() => _SnacbarExampleState();
}

class _SnacbarExampleState extends State<SnacbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snacbar Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.snackbar(
                "Shahidullah",
                "Subscribe my channel",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.blueGrey,
              icon: Icon(Icons.add),
              onTap: (snack) {

              },
              mainButton: TextButton(onPressed: () {

              }, child: Text("Click"))
            );
          },),
    );
  }
}
