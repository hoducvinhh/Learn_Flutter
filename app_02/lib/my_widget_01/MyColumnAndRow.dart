import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyColumnAndRow extends StatelessWidget {
  const MyColumnAndRow({super.key});

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
            Row(
              children: [
                const SizedBox(height: 50),
                Icon(Icons.access_alarm_outlined),
                Icon(Icons.access_alarm_outlined),
                Icon(Icons.access_alarm_outlined),
                Icon(Icons.access_alarm_outlined),
                Icon(Icons.access_alarm_outlined),
              ],
            ),

            Row(
              children: [
                Text(".........."),
              ],
            )
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
