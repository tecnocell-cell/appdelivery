import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class QtdSaboresRecord extends FirestoreRecord {
  QtdSaboresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qtdSabores');

  static Stream<QtdSaboresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QtdSaboresRecord.fromSnapshot(s));

  static Future<QtdSaboresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QtdSaboresRecord.fromSnapshot(s));

  static QtdSaboresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QtdSaboresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QtdSaboresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QtdSaboresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QtdSaboresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QtdSaboresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQtdSaboresRecordData({
  String? nome,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class QtdSaboresRecordDocumentEquality implements Equality<QtdSaboresRecord> {
  const QtdSaboresRecordDocumentEquality();

  @override
  bool equals(QtdSaboresRecord? e1, QtdSaboresRecord? e2) {
    return e1?.nome == e2?.nome && e1?.valor == e2?.valor;
  }

  @override
  int hash(QtdSaboresRecord? e) =>
      const ListEquality().hash([e?.nome, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is QtdSaboresRecord;
}
