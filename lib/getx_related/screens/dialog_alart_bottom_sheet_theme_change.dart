import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
=======
>>>>>>> origin/main

class AlartBottomTheme extends StatefulWidget {
  const AlartBottomTheme({Key? key}) : super(key: key);

  @override
  State<AlartBottomTheme> createState() => _AlartBottomThemeState();
}

class _AlartBottomThemeState extends State<AlartBottomTheme> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(
        title: Text("Alart Dialog, BottomSheet, Theme Changes"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog Alart"),
              subtitle: Text("Dialog alert with Getx"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  titlePadding: EdgeInsets.only(top: 20),
                  middleText: "Are you sure you want to delete this chat",
                  contentPadding: EdgeInsets.all(20),
                  confirm: ElevatedButton(onPressed: () {
                    //Navigator.of(context).pop();
                    Get.back();
                  }, child: Text("Ok")),
                  cancel: ElevatedButton(onPressed: () {

                  }, child: Text("Cancel")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet"),
              subtitle: Text("Bottom Sheet with Getx"),
              onTap: () {
                Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light Theme"),
                            onTap: () {
                              Get.changeThemeMode(ThemeMode.light);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text("Dark Theme"),
                            onTap: () {
                              Get.changeThemeMode(ThemeMode.light);
                            },
                          ),

                        ],
                      ),
                    )
                );
              },
            ),
          ),
        ],
      ),
    );
=======
    return Scaffold();
>>>>>>> origin/main
  }
}
