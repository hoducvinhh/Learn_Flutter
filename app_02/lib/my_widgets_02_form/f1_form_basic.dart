import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo> {
  //su dung Global key de truy cap form
  final _formKey = GlobalKey<FormState>();
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form co ban")),

      body: Padding(
        padding: EdgeInsets.all(16.0),

        //form la widget chua va quan ly cac truong du lieu
        //key: duoc du dung de truy cap vao trang thai form
        //phuong thuc validate() kiem tra tinh hop le cua tat ca cac truong
        // cac phuong thuc save() goi ham onSave() cua mio truong
        // phuong thuc reset() dat lai gia tri cua tat ca cac truong
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Ho va ten: ",
                  hintText: "Nhap ho va ten cua ban",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _name = value;
                },
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("XIn chao $_name")),
                        );
                      }
                    },
                    child: Text("Submit"),
                  ),

                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                      });
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
