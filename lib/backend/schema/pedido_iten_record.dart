import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PedidoItenRecord extends FirestoreRecord {
  PedidoItenRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idPedido" field.
  String? _idPedido;
  String get idPedido => _idPedido ?? '';
  bool hasIdPedido() => _idPedido != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  bool? _preco;
  bool get preco => _preco ?? false;
  bool hasPreco() => _preco != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  void _initializeFields() {
    _idPedido = snapshotData['idPedido'] as String?;
    _nome = snapshotData['nome'] as String?;
    _preco = snapshotData['preco'] as bool?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidoIten');

  static Stream<PedidoItenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoItenRecord.fromSnapshot(s));

  static Future<PedidoItenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoItenRecord.fromSnapshot(s));

  static PedidoItenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidoItenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoItenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoItenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoItenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoItenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoItenRecordData({
  String? idPedido,
  String? nome,
  bool? preco,
  int? quantidade,
  double? subTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPedido': idPedido,
      'nome': nome,
      'preco': preco,
      'quantidade': quantidade,
      'subTotal': subTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoItenRecordDocumentEquality implements Equality<PedidoItenRecord> {
  const PedidoItenRecordDocumentEquality();

  @override
  bool equals(PedidoItenRecord? e1, PedidoItenRecord? e2) {
    return e1?.idPedido == e2?.idPedido &&
        e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.quantidade == e2?.quantidade &&
        e1?.subTotal == e2?.subTotal;
  }

  @override
  int hash(PedidoItenRecord? e) => const ListEquality()
      .hash([e?.idPedido, e?.nome, e?.preco, e?.quantidade, e?.subTotal]);

  @override
  bool isValidKey(Object? o) => o is PedidoItenRecord;
}
