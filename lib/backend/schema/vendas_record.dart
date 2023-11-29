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

  // "nPedido" field.
  String? _nPedido;
  String get nPedido => _nPedido ?? '';
  bool hasNPedido() => _nPedido != null;

  // "idPedido" field.
  String? _idPedido;
  String get idPedido => _idPedido ?? '';
  bool hasIdPedido() => _idPedido != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _valortotal = castToType<double>(snapshotData['valortotal']);
    _dataVenda = snapshotData['dataVenda'] as DateTime?;
    _usuarioVenda = snapshotData['usuarioVenda'] as DocumentReference?;
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _pedidoSendoPrepatado = snapshotData['pedidoSendoPrepatado'] as bool?;
    _pedidoEnviadoEntrega = snapshotData['pedidoEnviadoEntrega'] as bool?;
    _pagamentoSucesso = snapshotData['pagamentoSucesso'] as bool?;
    _entregaRealizada = snapshotData['entregaRealizada'] as bool?;
    _nPedido = snapshotData['nPedido'] as String?;
    _idPedido = snapshotData['idPedido'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _produto = snapshotData['produto'] as String?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _img = snapshotData['img'] as String?;
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
  String? nPedido,
  String? idPedido,
  double? preco,
  String? produto,
  int? quantidade,
  String? img,
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
      'nPedido': nPedido,
      'idPedido': idPedido,
      'preco': preco,
      'produto': produto,
      'quantidade': quantidade,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendasRecordDocumentEquality implements Equality<VendasRecord> {
  const VendasRecordDocumentEquality();

  @override
  bool equals(VendasRecord? e1, VendasRecord? e2) {
    return e1?.valortotal == e2?.valortotal &&
        e1?.dataVenda == e2?.dataVenda &&
        e1?.usuarioVenda == e2?.usuarioVenda &&
        e1?.endereco == e2?.endereco &&
        e1?.pedidoSendoPrepatado == e2?.pedidoSendoPrepatado &&
        e1?.pedidoEnviadoEntrega == e2?.pedidoEnviadoEntrega &&
        e1?.pagamentoSucesso == e2?.pagamentoSucesso &&
        e1?.entregaRealizada == e2?.entregaRealizada &&
        e1?.nPedido == e2?.nPedido &&
        e1?.idPedido == e2?.idPedido &&
        e1?.preco == e2?.preco &&
        e1?.produto == e2?.produto &&
        e1?.quantidade == e2?.quantidade &&
        e1?.img == e2?.img;
  }

  @override
  int hash(VendasRecord? e) => const ListEquality().hash([
        e?.valortotal,
        e?.dataVenda,
        e?.usuarioVenda,
        e?.endereco,
        e?.pedidoSendoPrepatado,
        e?.pedidoEnviadoEntrega,
        e?.pagamentoSucesso,
        e?.entregaRealizada,
        e?.nPedido,
        e?.idPedido,
        e?.preco,
        e?.produto,
        e?.quantidade,
        e?.img
      ]);

  @override
  bool isValidKey(Object? o) => o is VendasRecord;
}
