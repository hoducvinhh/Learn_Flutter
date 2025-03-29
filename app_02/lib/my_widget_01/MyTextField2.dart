import 'package:flutter/material.dart';

class MyTextField2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField2> {
  final _textController = TextEditingController();
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: "Nhap thong tin",
                  hintText: "Nhap thong tin cua ban",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _inputText = value;
                  });
                },
              ),

              SizedBox(height: 50,),
              Text("Ban da nhap : $_inputText",style: TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
