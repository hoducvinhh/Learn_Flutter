import 'package:flutter/cupertino.dart';

class User{
  int? id;
  String name;
  String email;
  String phone;
  String? avatar;
  DateTime dateOfBirth;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.avatar,
    required this.dateOfBirth,
});

  // chuyen doi tuong user thanh map

Map<String,dynamic> toMap(){
  return {
    'id' : id,
    'name': name,
    'phone': phone,
    'avatar': avatar,
    'dataOfBirth': dateOfBirth.toIso8601String(),
  };
}

// tao doi tuong user tu map

factory User.fromMap(Map<String,dynamic>map){
  return User(
    id: map['id'],
    name:  map['name'],
    email: map['email'],
    phone: map['phone'],
    avatar: map['avatar'],
    dateOfBirth: DateTime.parse(map['dateOfBirth']),
  );
}

// phuong thuc copy de tao ban sao voi mot thuoc tinh

User copyWith({
  int? id,
  String? name,
  String? email,
  String? phone,
  String? avatar,
  DateTime? dateOfBirth,

}){
  return User(
    id: id?? this.id,
    name: name?? this.name,
    email: email?? this.email,
    phone: phone?? this.phone,
    avatar: avatar?? this.avatar,
    dateOfBirth: dateOfBirth?? this.dateOfBirth,

  );
}

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, dateOfBirth: $dateOfBirth}';
  }
}