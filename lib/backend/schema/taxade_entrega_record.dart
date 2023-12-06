import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TaxadeEntregaRecord extends FirestoreRecord {
  TaxadeEntregaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "localizacao" field.
  String? _localizacao;
  String get localizacao => _localizacao ?? '';
  bool hasLocalizacao() => _localizacao != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  void _initializeFields() {
    _localizacao = snapshotData['localizacao'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('taxadeEntrega');

  static Stream<TaxadeEntregaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaxadeEntregaRecord.fromSnapshot(s));

  static Future<TaxadeEntregaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaxadeEntregaRecord.fromSnapshot(s));

  static TaxadeEntregaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TaxadeEntregaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaxadeEntregaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaxadeEntregaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaxadeEntregaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaxadeEntregaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaxadeEntregaRecordData({
  String? localizacao,
  double? preco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'localizacao': localizacao,
      'preco': preco,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaxadeEntregaRecordDocumentEquality
    implements Equality<TaxadeEntregaRecord> {
  const TaxadeEntregaRecordDocumentEquality();

  @override
  bool equals(TaxadeEntregaRecord? e1, TaxadeEntregaRecord? e2) {
    return e1?.localizacao == e2?.localizacao && e1?.preco == e2?.preco;
  }

  @override
  int hash(TaxadeEntregaRecord? e) =>
      const ListEquality().hash([e?.localizacao, e?.preco]);

  @override
  bool isValidKey(Object? o) => o is TaxadeEntregaRecord;
}
