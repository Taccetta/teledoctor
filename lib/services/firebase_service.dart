import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore database = FirebaseFirestore.instance;

Future<List> getMedics() async {
  List medics = [];
  CollectionReference collectionReferenceMedics = database.collection('medics');

  QuerySnapshot queryMedics = await collectionReferenceMedics.get();

  queryMedics.docs.forEach((documentfirebase) {
    medics.add(documentfirebase.data());
  });

  return medics;
}
