import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  // Funções CRUD
  await getUser();
  await updateUser();
  await deleteUser();
 
  runApp(MyApp());
}


void addUser(String value,String values) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users.add({
    'full_name': value,
    'age': values,
  }).then((value) => print("User Added"))
    .catchError((error) => print("Failed to add user: $error"));
}

Future<void> getUser() async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  DocumentSnapshot snapshot = await users.doc('USER_ID').get();
  if (snapshot.exists) {
    print('User data: ${snapshot.data()}');
  } else {
    print('No such document!');
  }
}

Future<void> updateUser() async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  await users.doc('USER_ID').update({
    'age': 30
  }).then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
}

Future<void> deleteUser() async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  await users.doc('USER_ID').delete()
    .then((value) => print("User Deleted"))
    .catchError((error) => print("Failed to delete user: $error"));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String newUser = "";
  String newAge = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Firestore CRUD'),
        ),
        body: Column(
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: "Digite novo usuario"),
                onChanged: (value) {
                  newUser = value; 
                },
              ),
            ),
            Expanded(
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: "Digite a idade"),
                onChanged: (values) {
                  newAge = values; 
                },
              ),
            ),
            TextButton(
              onPressed: () {
                if (newUser.isNotEmpty) {
                  addUser(newUser,newAge); 
                }
              },
              child: const Text("Adicionar Usuário"),
            ),
            Text('Check console for CRUD operations'),
          ],
        ),
      ),
    );
  }
}