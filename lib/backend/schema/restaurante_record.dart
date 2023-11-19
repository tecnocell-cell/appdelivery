import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RestauranteRecord extends FirestoreRecord {
  RestauranteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "tipo" field.
  DocumentReference? _tipo;
  DocumentReference? get tipo => _tipo;
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _image = snapshotData['image'] as String?;
    _tipo = snapshotData['tipo'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurante');

  static Stream<RestauranteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauranteRecord.fromSnapshot(s));

  static Future<RestauranteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauranteRecord.fromSnapshot(s));

  static RestauranteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauranteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauranteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauranteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauranteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauranteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauranteRecordData({
  String? nome,
  String? image,
  DocumentReference? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'image': image,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestauranteRecordDocumentEquality implements Equality<RestauranteRecord> {
  const RestauranteRecordDocumentEquality();

  @override
  bool equals(RestauranteRecord? e1, RestauranteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.image == e2?.image &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(RestauranteRecord? e) =>
      const ListEquality().hash([e?.nome, e?.image, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is RestauranteRecord;
}
