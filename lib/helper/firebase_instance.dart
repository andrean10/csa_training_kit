import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreInstance {
  static FirebaseFirestore? _instance;

  FirestoreInstance._();

  static FirebaseFirestore? get instance {
    _instance ??= FirebaseFirestore.instance;
    return _instance;
  }
}
