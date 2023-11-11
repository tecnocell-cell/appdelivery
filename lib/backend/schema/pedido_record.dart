import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PedidoRecord extends FirestoreRecord {
  PedidoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "idAtendente" field.
  String? _idAtendente;
  String get idAtendente => _idAtendente ?? '';
  bool hasIdAtendente() => _idAtendente != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "total" field.
  bool? _total;
  bool get total => _total ?? false;
  bool hasTotal() => _total != null;

  // "formPagament" field.
  String? _formPagament;
  String get formPagament => _formPagament ?? '';
  bool hasFormPagament() => _formPagament != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "idCliente" field.
  String? _idCliente;
  String get idCliente => _idCliente ?? '';
  bool hasIdCliente() => _idCliente != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _idAtendente = snapshotData['idAtendente'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _total = snapshotData['total'] as bool?;
    _formPagament = snapshotData['formPagament'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _idCliente = snapshotData['idCliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedido');

  static Stream<PedidoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoRecord.fromSnapshot(s));

  static Future<PedidoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoRecord.fromSnapshot(s));

  static PedidoRecord fromSnapshot(DocumentSnapshot snapshot) => PedidoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoRecordData({
  String? tipo,
  String? idAtendente,
  DateTime? data,
  bool? total,
  String? formPagament,
  int? status,
  String? idCliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'idAtendente': idAtendente,
      'data': data,
      'total': total,
      'formPagament': formPagament,
      'status': status,
      'idCliente': idCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoRecordDocumentEquality implements Equality<PedidoRecord> {
  const PedidoRecordDocumentEquality();

  @override
  bool equals(PedidoRecord? e1, PedidoRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.idAtendente == e2?.idAtendente &&
        e1?.data == e2?.data &&
        e1?.total == e2?.total &&
        e1?.formPagament == e2?.formPagament &&
        e1?.status == e2?.status &&
        e1?.idCliente == e2?.idCliente;
  }

  @override
  int hash(PedidoRecord? e) => const ListEquality().hash([
        e?.tipo,
        e?.idAtendente,
        e?.data,
        e?.total,
        e?.formPagament,
        e?.status,
        e?.idCliente
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidoRecord;
}
