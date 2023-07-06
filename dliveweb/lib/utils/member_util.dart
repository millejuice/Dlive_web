import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class MemberProvider extends ChangeNotifier {
  String _name = '';
  String _character = 'assets/character_pale.png';
  List _music = [];

  String get name => _name;
  String get character => _character;
  List get music => _music;

  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  void setCharacter(String character) {
    _character = character;
    notifyListeners();
  }

  void setMusic(List music) {
    _music = music;
    notifyListeners();
  }
}

// class MemberUtil {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final firestore = FirebaseFirestore.instance;

//   Future<void> addMember(String name, String character, List music) async {
//     User? user = auth.currentUser;

//     try {
//       await firestore.collection('Member').doc(user!.uid).set({
//         'name': name,
//         'character': character,
//         'music': [],
//       });
//     } catch (e) {
//       print('Error adding host: $e');
//     }
//   }

//   Future<void> getMember(MemberProvider memberProvider) async {
//     User? user = auth.currentUser;
//     String uid = user!.uid;
//     DocumentSnapshot snapshot =
//         await firestore.collection('Member').doc(uid).get();
//     if (snapshot.exists) {
//       Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
//       String name = data['name'];
//       String character = data['character'];
//       List music = data['music'];

//       memberProvider.setName(name);
//       memberProvider.setCharacter(character);
//       memberProvider.setMusic(music);
//     }
//   }
// }
