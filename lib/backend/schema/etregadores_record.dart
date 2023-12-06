import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EtregadoresRecord extends FirestoreRecord {
  EtregadoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "tipoVeiculo" field.
  String? _tipoVeiculo;
  String get tipoVeiculo => _tipoVeiculo ?? '';
  bool hasTipoVeiculo() => _tipoVeiculo != null;

  // "disponibilidade" field.
  bool? _disponibilidade;
  bool get disponibilidade => _disponibilidade ?? false;
  bool hasDisponibilidade() => _disponibilidade != null;

  // "pedido" field.
  List<DocumentReference>? _pedido;
  List<DocumentReference> get pedido => _pedido ?? const [];
  bool hasPedido() => _pedido != null;

  // "avaliacao" field.
  double? _avaliacao;
  double get avaliacao => _avaliacao ?? 0.0;
  bool hasAvaliacao() => _avaliacao != null;

  // "localizacao" field.
  String? _localizacao;
  String get localizacao => _localizacao ?? '';
  bool hasLocalizacao() => _localizacao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _tipoVeiculo = snapshotData['tipoVeiculo'] as String?;
    _disponibilidade = snapshotData['disponibilidade'] as bool?;
    _pedido = getDataList(snapshotData['pedido']);
    _avaliacao = castToType<double>(snapshotData['avaliacao']);
    _localizacao = snapshotData['localizacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('etregadores');

  static Stream<EtregadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EtregadoresRecord.fromSnapshot(s));

  static Future<EtregadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EtregadoresRecord.fromSnapshot(s));

  static EtregadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EtregadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EtregadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EtregadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EtregadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EtregadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEtregadoresRecordData({
  String? nome,
  String? tipoVeiculo,
  bool? disponibilidade,
  double? avaliacao,
  String? localizacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'tipoVeiculo': tipoVeiculo,
      'disponibilidade': disponibilidade,
      'avaliacao': avaliacao,
      'localizacao': localizacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EtregadoresRecordDocumentEquality implements Equality<EtregadoresRecord> {
  const EtregadoresRecordDocumentEquality();

  @override
  bool equals(EtregadoresRecord? e1, EtregadoresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.tipoVeiculo == e2?.tipoVeiculo &&
        e1?.disponibilidade == e2?.disponibilidade &&
        listEquality.equals(e1?.pedido, e2?.pedido) &&
        e1?.avaliacao == e2?.avaliacao &&
        e1?.localizacao == e2?.localizacao;
  }

  @override
  int hash(EtregadoresRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.tipoVeiculo,
        e?.disponibilidade,
        e?.pedido,
        e?.avaliacao,
        e?.localizacao
      ]);

  @override
  bool isValidKey(Object? o) => o is EtregadoresRecord;
}
