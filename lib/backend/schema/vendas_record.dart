import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class VendasRecord extends FirestoreRecord {
  VendasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "valortotal" field.
  double? _valortotal;
  double get valortotal => _valortotal ?? 0.0;
  bool hasValortotal() => _valortotal != null;

  // "dataVenda" field.
  DateTime? _dataVenda;
  DateTime? get dataVenda => _dataVenda;
  bool hasDataVenda() => _dataVenda != null;

  // "usuarioVenda" field.
  DocumentReference? _usuarioVenda;
  DocumentReference? get usuarioVenda => _usuarioVenda;
  bool hasUsuarioVenda() => _usuarioVenda != null;

  // "produtoVenda" field.
  List<DocumentReference>? _produtoVenda;
  List<DocumentReference> get produtoVenda => _produtoVenda ?? const [];
  bool hasProdutoVenda() => _produtoVenda != null;

  // "endereco" field.
  DocumentReference? _endereco;
  DocumentReference? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "pedidoSendoPrepatado" field.
  bool? _pedidoSendoPrepatado;
  bool get pedidoSendoPrepatado => _pedidoSendoPrepatado ?? false;
  bool hasPedidoSendoPrepatado() => _pedidoSendoPrepatado != null;

  // "pedidoEnviadoEntrega" field.
  bool? _pedidoEnviadoEntrega;
  bool get pedidoEnviadoEntrega => _pedidoEnviadoEntrega ?? false;
  bool hasPedidoEnviadoEntrega() => _pedidoEnviadoEntrega != null;

  // "pagamentoSucesso" field.
  bool? _pagamentoSucesso;
  bool get pagamentoSucesso => _pagamentoSucesso ?? false;
  bool hasPagamentoSucesso() => _pagamentoSucesso != null;

  // "entregaRealizada" field.
  bool? _entregaRealizada;
  bool get entregaRealizada => _entregaRealizada ?? false;
  bool hasEntregaRealizada() => _entregaRealizada != null;

  void _initializeFields() {
    _valortotal = castToType<double>(snapshotData['valortotal']);
    _dataVenda = snapshotData['dataVenda'] as DateTime?;
    _usuarioVenda = snapshotData['usuarioVenda'] as DocumentReference?;
    _produtoVenda = getDataList(snapshotData['produtoVenda']);
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _pedidoSendoPrepatado = snapshotData['pedidoSendoPrepatado'] as bool?;
    _pedidoEnviadoEntrega = snapshotData['pedidoEnviadoEntrega'] as bool?;
    _pagamentoSucesso = snapshotData['pagamentoSucesso'] as bool?;
    _entregaRealizada = snapshotData['entregaRealizada'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendas');

  static Stream<VendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendasRecord.fromSnapshot(s));

  static Future<VendasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendasRecord.fromSnapshot(s));

  static VendasRecord fromSnapshot(DocumentSnapshot snapshot) => VendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendasRecordData({
  double? valortotal,
  DateTime? dataVenda,
  DocumentReference? usuarioVenda,
  DocumentReference? endereco,
  bool? pedidoSendoPrepatado,
  bool? pedidoEnviadoEntrega,
  bool? pagamentoSucesso,
  bool? entregaRealizada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valortotal': valortotal,
      'dataVenda': dataVenda,
      'usuarioVenda': usuarioVenda,
      'endereco': endereco,
      'pedidoSendoPrepatado': pedidoSendoPrepatado,
      'pedidoEnviadoEntrega': pedidoEnviadoEntrega,
      'pagamentoSucesso': pagamentoSucesso,
      'entregaRealizada': entregaRealizada,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendasRecordDocumentEquality implements Equality<VendasRecord> {
  const VendasRecordDocumentEquality();

  @override
  bool equals(VendasRecord? e1, VendasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.valortotal == e2?.valortotal &&
        e1?.dataVenda == e2?.dataVenda &&
        e1?.usuarioVenda == e2?.usuarioVenda &&
        listEquality.equals(e1?.produtoVenda, e2?.produtoVenda) &&
        e1?.endereco == e2?.endereco &&
        e1?.pedidoSendoPrepatado == e2?.pedidoSendoPrepatado &&
        e1?.pedidoEnviadoEntrega == e2?.pedidoEnviadoEntrega &&
        e1?.pagamentoSucesso == e2?.pagamentoSucesso &&
        e1?.entregaRealizada == e2?.entregaRealizada;
  }

  @override
  int hash(VendasRecord? e) => const ListEquality().hash([
        e?.valortotal,
        e?.dataVenda,
        e?.usuarioVenda,
        e?.produtoVenda,
        e?.endereco,
        e?.pedidoSendoPrepatado,
        e?.pedidoEnviadoEntrega,
        e?.pagamentoSucesso,
        e?.entregaRealizada
      ]);

  @override
  bool isValidKey(Object? o) => o is VendasRecord;
}
