import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;
Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('Peoples');
  QuerySnapshot queryPeople = await collectionReferencePeople.get();
  queryPeople.docs.forEach((document) {
    people.add(document.data());
  });
  return people;
}
