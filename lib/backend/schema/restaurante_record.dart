import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RestauranteRecord extends FirestoreRecord {
  RestauranteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "tipo" field.
  DocumentReference? _tipo;
  DocumentReference? get tipo => _tipo;
  bool hasTipo() => _tipo != null;

  // "restauranteinfos" field.
  RestauranteINFOSStruct? _restauranteinfos;
  RestauranteINFOSStruct get restauranteinfos =>
      _restauranteinfos ?? RestauranteINFOSStruct();
  bool hasRestauranteinfos() => _restauranteinfos != null;

  // "dono" field.
  DocumentReference? _dono;
  DocumentReference? get dono => _dono;
  bool hasDono() => _dono != null;

  // "endereco" field.
  DocumentReference? _endereco;
  DocumentReference? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "avaliacao" field.
  double? _avaliacao;
  double get avaliacao => _avaliacao ?? 0.0;
  bool hasAvaliacao() => _avaliacao != null;

  // "taxadeEntrega" field.
  List<DocumentReference>? _taxadeEntrega;
  List<DocumentReference> get taxadeEntrega => _taxadeEntrega ?? const [];
  bool hasTaxadeEntrega() => _taxadeEntrega != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _image = snapshotData['image'] as String?;
    _tipo = snapshotData['tipo'] as DocumentReference?;
    _restauranteinfos =
        RestauranteINFOSStruct.maybeFromMap(snapshotData['restauranteinfos']);
    _dono = snapshotData['dono'] as DocumentReference?;
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _avaliacao = castToType<double>(snapshotData['avaliacao']);
    _taxadeEntrega = getDataList(snapshotData['taxadeEntrega']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurante');

  static Stream<RestauranteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauranteRecord.fromSnapshot(s));

  static Future<RestauranteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauranteRecord.fromSnapshot(s));

  static RestauranteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauranteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauranteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauranteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauranteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauranteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauranteRecordData({
  String? nome,
  String? image,
  DocumentReference? tipo,
  RestauranteINFOSStruct? restauranteinfos,
  DocumentReference? dono,
  DocumentReference? endereco,
  double? avaliacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'image': image,
      'tipo': tipo,
      'restauranteinfos': RestauranteINFOSStruct().toMap(),
      'dono': dono,
      'endereco': endereco,
      'avaliacao': avaliacao,
    }.withoutNulls,
  );

  // Handle nested data for "restauranteinfos" field.
  addRestauranteINFOSStructData(
      firestoreData, restauranteinfos, 'restauranteinfos');

  return firestoreData;
}

class RestauranteRecordDocumentEquality implements Equality<RestauranteRecord> {
  const RestauranteRecordDocumentEquality();

  @override
  bool equals(RestauranteRecord? e1, RestauranteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.image == e2?.image &&
        e1?.tipo == e2?.tipo &&
        e1?.restauranteinfos == e2?.restauranteinfos &&
        e1?.dono == e2?.dono &&
        e1?.endereco == e2?.endereco &&
        e1?.avaliacao == e2?.avaliacao &&
        listEquality.equals(e1?.taxadeEntrega, e2?.taxadeEntrega);
  }

  @override
  int hash(RestauranteRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.image,
        e?.tipo,
        e?.restauranteinfos,
        e?.dono,
        e?.endereco,
        e?.avaliacao,
        e?.taxadeEntrega
      ]);

  @override
  bool isValidKey(Object? o) => o is RestauranteRecord;
}
