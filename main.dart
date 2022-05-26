import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: MyTestApp(),
  ));
}

class MyTestApp extends StatefulWidget {
  @override
  _MyTestAppState createState() => _MyTestAppState();
}

class _MyTestAppState extends State<MyTestApp> {
  String inputText = "";
  String outputText = "";

  void _setText() {
    setState(() {
      outputText = inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestApp'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name ',
              ),
              onChanged: (value) => inputText = value,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          RaisedButton(
            onPressed: _setText,
            child: Text('Submit'),
            color: Colors.blue.shade200,
          ),
          SizedBox(
            height: 8,
          ),
          Text(outputText),
        ],
      ),
    );
  }
}
