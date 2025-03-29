import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget{
 const MyScaffold({
    super.key
});

  @override
  Widget build(BuildContext context) {
    // tra ve scaffold - widget cung cap bo cuc material design co ban
    // man hinh
    return Scaffold(
      //tieu de cua ung dung
      appBar: AppBar(
        title: Text("app_02"),
        
      ), 
      backgroundColor: Colors.amberAccent,
      body:  Center(child: Text("Noi dung chinh"),),
      
      floatingActionButton: FloatingActionButton(onPressed: (){print("press");
        },
      child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
      ]),
    );
  }
}