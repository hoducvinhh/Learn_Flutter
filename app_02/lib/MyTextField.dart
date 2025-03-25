import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // tra ve scaffold - widget cung cap bo cuc material design co ban
    // man hinh
    return Scaffold(
      //tieu de cua ung dung
      appBar: AppBar(
        // tieu de
        title: Text("app_02"),
        //mau nen
        backgroundColor: Colors.blue,

        //do bong cua appbar
        elevation: 4,

        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),

          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      //backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              /**
               * TextField là widget cho phép người dùng nhap van bản thông qua bàn phím.
               * Dây là thành phần thiết yếu trong hầu hết các ứng dụng, từ biêyr mẫu đăng nhập, tìm kiếm
               * đến nhập liệu trong các ứng dụng phức tạp
               */
              TextField(
                decoration: InputDecoration(
                  labelText: "Ho va ten",
                  hintText: "Nhap ho va ten cua ban",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 50),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Example@gmail.com",
                  helperText: "Nhap vao email ca nhan",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  filled: true,
                  fillColor: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "So dien thoai",
                  hintText: "Nhap vao so dien thoai cua ban",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("press");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
        ],
      ),
    );
  }
}
