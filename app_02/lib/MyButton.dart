import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

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

            //elevateButton la mot button noi voi hieu ung do bong,
            //thuong duoc su dung cho cac hanh dong chinh trong ung dung
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),
            //Text Button la mot button phang, khong do bong, thuongo dung cho cac hanh dong thu yeu, hoac cac thanh phan nhu dialog, card
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Text("TextButton", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),

            //OutLine Button la button co vien bao quang,
            //khong co mau nen,
            //phu hop cho cac thay the
            OutlinedButton(
              onPressed: () {
                print("OutLineButton");
              },
              child: Text("OutLineButton", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),

            //IconButton la button chi gom icon,
            //khong co van ban,
            //thuong dung trong appbar, toolbar
            IconButton(
              onPressed: () {
                print("IconButton");
              },
              icon: Icon(Icons.favorite),
            ),

            SizedBox(height: 20),

            //Floating ActionButton la button hinh tron
            //noi tren giao dien, thuong dung cho hanh dong chinh cua man hinh
            FloatingActionButton(

              onPressed: () {
                print("FloatingActionButton");
              },
            
  child: Icon(Icons.add),          ),

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
