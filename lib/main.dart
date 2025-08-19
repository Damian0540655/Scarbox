import 'package:flutter/material.dart';

void main() {
  runApp(ScarboxApp());
}

class ScarboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scarbox',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> apps = [
    {
      "name": "Scarlet",
      "desc": "IPA Installer Alternative",
      "link": "https://example.com/scarlet.ipa"
    },
    {
      "name": "GBox",
      "desc": "App Installer like AltStore",
      "link": "https://example.com/gbox.ipa"
    },
    {
      "name": "Scarbox",
      "desc": "Our App!",
      "link": "https://example.com/scarbox.ipa"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scarbox IPA Installer")),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          final app = apps[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(app["name"]!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(app["desc"]!),
              trailing: ElevatedButton(
                onPressed: () {
                  print("Install ${app["name"]}");
                },
                child: Text("Installieren"),
              ),
            ),
          );
        },
      ),
    );
  }
}
