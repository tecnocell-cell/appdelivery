import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PromocaoRecord extends FirestoreRecord {
  PromocaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "restaurante" field.
  DocumentReference? _restaurante;
  DocumentReference? get restaurante => _restaurante;
  bool hasRestaurante() => _restaurante != null;

  // "produto" field.
  DocumentReference? _produto;
  DocumentReference? get produto => _produto;
  bool hasProduto() => _produto != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  bool hasDesconto() => _desconto != null;

  // "dataInicio" field.
  DateTime? _dataInicio;
  DateTime? get dataInicio => _dataInicio;
  bool hasDataInicio() => _dataInicio != null;

  // "dataFim" field.
  DateTime? _dataFim;
  DateTime? get dataFim => _dataFim;
  bool hasDataFim() => _dataFim != null;

  void _initializeFields() {
    _restaurante = snapshotData['restaurante'] as DocumentReference?;
    _produto = snapshotData['produto'] as DocumentReference?;
    _descricao = snapshotData['descricao'] as String?;
    _desconto = castToType<double>(snapshotData['desconto']);
    _dataInicio = snapshotData['dataInicio'] as DateTime?;
    _dataFim = snapshotData['dataFim'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promocao');

  static Stream<PromocaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocaoRecord.fromSnapshot(s));

  static Future<PromocaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocaoRecord.fromSnapshot(s));

  static PromocaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocaoRecordData({
  DocumentReference? restaurante,
  DocumentReference? produto,
  String? descricao,
  double? desconto,
  DateTime? dataInicio,
  DateTime? dataFim,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurante': restaurante,
      'produto': produto,
      'descricao': descricao,
      'desconto': desconto,
      'dataInicio': dataInicio,
      'dataFim': dataFim,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocaoRecordDocumentEquality implements Equality<PromocaoRecord> {
  const PromocaoRecordDocumentEquality();

  @override
  bool equals(PromocaoRecord? e1, PromocaoRecord? e2) {
    return e1?.restaurante == e2?.restaurante &&
        e1?.produto == e2?.produto &&
        e1?.descricao == e2?.descricao &&
        e1?.desconto == e2?.desconto &&
        e1?.dataInicio == e2?.dataInicio &&
        e1?.dataFim == e2?.dataFim;
  }

  @override
  int hash(PromocaoRecord? e) => const ListEquality().hash([
        e?.restaurante,
        e?.produto,
        e?.descricao,
        e?.desconto,
        e?.dataInicio,
        e?.dataFim
      ]);

  @override
  bool isValidKey(Object? o) => o is PromocaoRecord;
}
