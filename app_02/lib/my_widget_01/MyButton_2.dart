import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyButton_2 extends StatelessWidget {
  const MyButton_2({super.key});

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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: (() {
                print("ElevateButton");
              }),
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                //dang hinh
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                //padding
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

                //elevate
                elevation: 10,
              ),

              // mau cua noi dung ben trong
            ),

            //Inwell: day khong phai la button, nhung no cho phep tao ra tin hieu gon song(ripple effect)
            //khi nhan vao bat ky widget nao
            SizedBox(height: 50),

            InkWell(
              onTap: () {
                print("Inwell duoc nhan");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),

                child: Text("Button tuy chinh voi Inwell"),
              ),
            ),
          ],
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
