import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo> {
  //su dung Global key de truy cap form
  final _formKey = GlobalKey<FormState>();
  final _fullnamController = TextEditingController();
  final _emailController = TextEditingController();
  final _passworldController = TextEditingController();
  bool _obscurePassword = true;

  String? _name;
  String? _selectedCity;
  final List<String> _cities = [
    'Ha Noi',
    'TP HCM',
    'Da Nang',
    'Can Tho',
    'Hai Phong',
  ];

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
                //TextFormField la phien ban mo rong cua TextField tich hop voi form
                //Validator la ham kiem tra tinh hop le cua du lieu
                //Controller ch phep truy cap va dieu khien thiet bi
                // obsscureText: cho phep an van ban
                //autovalidateMode : dieu khien thoi diem validate duoc kich hoat
                controller: _fullnamController,
                decoration: InputDecoration(
                  labelText: "Ho va ten: ",
                  hintText: "Nhap ho va ten cua ban",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _name = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui long nhap ho va ten';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              //EmailFiel
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  validator:
                  (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập email';
                    }
                    if (!RegExp(
                      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                    ).hasMatch(value)) {
                      return 'Email không hợp lệ';
                    }
                    return null; // Nếu hợp lệ thì không có lỗi
                  };
                },
              ),

              SizedBox(height: 20),

              //password field
              TextFormField(
                controller: _passworldController,
                decoration: InputDecoration(
                  labelText: 'Mat khau',
                  hintText: 'Nhap mat khau',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
              ),

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

                  SizedBox(height: 10),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: 'Thanh Pho',
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedCity,
                    items:
                        _cities.map((city) {
                          return DropdownMenuItem(
                            child: Text(city),
                            value: city,
                          );
                        }).toList(),
                    onChanged: (value) {

                    },
                    validator: (value){
                      if(value == null|| value.isEmpty){
                        return 'Vui long chong thanh pho';
                      }
                      return null;
                    },
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
