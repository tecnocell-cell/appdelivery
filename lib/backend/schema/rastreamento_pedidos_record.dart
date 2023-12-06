import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RastreamentoPedidosRecord extends FirestoreRecord {
  RastreamentoPedidosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "pedido" field.
  DocumentReference? _pedido;
  DocumentReference? get pedido => _pedido;
  bool hasPedido() => _pedido != null;

  // "localizacao" field.
  DocumentReference? _localizacao;
  DocumentReference? get localizacao => _localizacao;
  bool hasLocalizacao() => _localizacao != null;

  // "tempoEstimadoentrega" field.
  bool? _tempoEstimadoentrega;
  bool get tempoEstimadoentrega => _tempoEstimadoentrega ?? false;
  bool hasTempoEstimadoentrega() => _tempoEstimadoentrega != null;

  void _initializeFields() {
    _pedido = snapshotData['pedido'] as DocumentReference?;
    _localizacao = snapshotData['localizacao'] as DocumentReference?;
    _tempoEstimadoentrega = snapshotData['tempoEstimadoentrega'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rastreamentoPedidos');

  static Stream<RastreamentoPedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RastreamentoPedidosRecord.fromSnapshot(s));

  static Future<RastreamentoPedidosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RastreamentoPedidosRecord.fromSnapshot(s));

  static RastreamentoPedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RastreamentoPedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RastreamentoPedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RastreamentoPedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RastreamentoPedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RastreamentoPedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRastreamentoPedidosRecordData({
  DocumentReference? pedido,
  DocumentReference? localizacao,
  bool? tempoEstimadoentrega,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pedido': pedido,
      'localizacao': localizacao,
      'tempoEstimadoentrega': tempoEstimadoentrega,
    }.withoutNulls,
  );

  return firestoreData;
}

class RastreamentoPedidosRecordDocumentEquality
    implements Equality<RastreamentoPedidosRecord> {
  const RastreamentoPedidosRecordDocumentEquality();

  @override
  bool equals(RastreamentoPedidosRecord? e1, RastreamentoPedidosRecord? e2) {
    return e1?.pedido == e2?.pedido &&
        e1?.localizacao == e2?.localizacao &&
        e1?.tempoEstimadoentrega == e2?.tempoEstimadoentrega;
  }

  @override
  int hash(RastreamentoPedidosRecord? e) => const ListEquality()
      .hash([e?.pedido, e?.localizacao, e?.tempoEstimadoentrega]);

  @override
  bool isValidKey(Object? o) => o is RastreamentoPedidosRecord;
}
