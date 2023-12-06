import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TipoDeMassaRecord extends FirestoreRecord {
  TipoDeMassaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipoDeMassa');

  static Stream<TipoDeMassaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoDeMassaRecord.fromSnapshot(s));

  static Future<TipoDeMassaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoDeMassaRecord.fromSnapshot(s));

  static TipoDeMassaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoDeMassaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoDeMassaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoDeMassaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoDeMassaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoDeMassaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoDeMassaRecordData({
  String? nome,
  double? preco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoDeMassaRecordDocumentEquality implements Equality<TipoDeMassaRecord> {
  const TipoDeMassaRecordDocumentEquality();

  @override
  bool equals(TipoDeMassaRecord? e1, TipoDeMassaRecord? e2) {
    return e1?.nome == e2?.nome && e1?.preco == e2?.preco;
  }

  @override
  int hash(TipoDeMassaRecord? e) =>
      const ListEquality().hash([e?.nome, e?.preco]);

  @override
  bool isValidKey(Object? o) => o is TipoDeMassaRecord;
}
