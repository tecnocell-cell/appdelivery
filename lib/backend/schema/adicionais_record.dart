import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AdicionaisRecord extends FirestoreRecord {
  AdicionaisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adicionais');

  static Stream<AdicionaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdicionaisRecord.fromSnapshot(s));

  static Future<AdicionaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdicionaisRecord.fromSnapshot(s));

  static AdicionaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdicionaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdicionaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdicionaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdicionaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdicionaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdicionaisRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdicionaisRecordDocumentEquality implements Equality<AdicionaisRecord> {
  const AdicionaisRecordDocumentEquality();

  @override
  bool equals(AdicionaisRecord? e1, AdicionaisRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(AdicionaisRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is AdicionaisRecord;
}
