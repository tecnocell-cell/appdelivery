import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProdutoVendaRecord extends FirestoreRecord {
  ProdutoVendaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "valorSubtotal" field.
  double? _valorSubtotal;
  double get valorSubtotal => _valorSubtotal ?? 0.0;
  bool hasValorSubtotal() => _valorSubtotal != null;

  // "produto" field.
  DocumentReference? _produto;
  DocumentReference? get produto => _produto;
  bool hasProduto() => _produto != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _valorSubtotal = castToType<double>(snapshotData['valorSubtotal']);
    _produto = snapshotData['produto'] as DocumentReference?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtoVenda');

  static Stream<ProdutoVendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoVendaRecord.fromSnapshot(s));

  static Future<ProdutoVendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoVendaRecord.fromSnapshot(s));

  static ProdutoVendaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoVendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoVendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoVendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutoVendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoVendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoVendaRecordData({
  double? valorSubtotal,
  DocumentReference? produto,
  int? quantidade,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valorSubtotal': valorSubtotal,
      'produto': produto,
      'quantidade': quantidade,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutoVendaRecordDocumentEquality
    implements Equality<ProdutoVendaRecord> {
  const ProdutoVendaRecordDocumentEquality();

  @override
  bool equals(ProdutoVendaRecord? e1, ProdutoVendaRecord? e2) {
    return e1?.valorSubtotal == e2?.valorSubtotal &&
        e1?.produto == e2?.produto &&
        e1?.quantidade == e2?.quantidade &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(ProdutoVendaRecord? e) => const ListEquality()
      .hash([e?.valorSubtotal, e?.produto, e?.quantidade, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is ProdutoVendaRecord;
}
