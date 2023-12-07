import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "sabor" field.
  String? _sabor;
  String get sabor => _sabor ?? '';
  bool hasSabor() => _sabor != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "restaurante" field.
  DocumentReference? _restaurante;
  DocumentReference? get restaurante => _restaurante;
  bool hasRestaurante() => _restaurante != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "tamanho" field.
  int? _tamanho;
  int get tamanho => _tamanho ?? 0;
  bool hasTamanho() => _tamanho != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "qtdSabores" field.
  DocumentReference? _qtdSabores;
  DocumentReference? get qtdSabores => _qtdSabores;
  bool hasQtdSabores() => _qtdSabores != null;

  // "personalizado" field.
  bool? _personalizado;
  bool get personalizado => _personalizado ?? false;
  bool hasPersonalizado() => _personalizado != null;

  // "categoria" field.
  List<DocumentReference>? _categoria;
  List<DocumentReference> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _sabor = snapshotData['sabor'] as String?;
    _descri = snapshotData['descri'] as String?;
    _restaurante = snapshotData['restaurante'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _tamanho = castToType<int>(snapshotData['tamanho']);
    _isActive = snapshotData['isActive'] as bool?;
    _qtdSabores = snapshotData['qtdSabores'] as DocumentReference?;
    _personalizado = snapshotData['personalizado'] as bool?;
    _categoria = getDataList(snapshotData['categoria']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  static ProdutosRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProdutosRecord.getDocumentFromData(
        {
          'nome': snapshot.data['nome'],
          'preco': convertAlgoliaParam(
            snapshot.data['preco'],
            ParamType.double,
            false,
          ),
          'sabor': snapshot.data['sabor'],
          'descri': snapshot.data['descri'],
          'restaurante': convertAlgoliaParam(
            snapshot.data['restaurante'],
            ParamType.DocumentReference,
            false,
          ),
          'image': snapshot.data['image'],
          'tamanho': convertAlgoliaParam(
            snapshot.data['tamanho'],
            ParamType.int,
            false,
          ),
          'isActive': snapshot.data['isActive'],
          'qtdSabores': convertAlgoliaParam(
            snapshot.data['qtdSabores'],
            ParamType.DocumentReference,
            false,
          ),
          'personalizado': snapshot.data['personalizado'],
          'categoria': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['categoria'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        ProdutosRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProdutosRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'produtos',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? nome,
  double? preco,
  String? sabor,
  String? descri,
  DocumentReference? restaurante,
  String? image,
  int? tamanho,
  bool? isActive,
  DocumentReference? qtdSabores,
  bool? personalizado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
      'sabor': sabor,
      'descri': descri,
      'restaurante': restaurante,
      'image': image,
      'tamanho': tamanho,
      'isActive': isActive,
      'qtdSabores': qtdSabores,
      'personalizado': personalizado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.sabor == e2?.sabor &&
        e1?.descri == e2?.descri &&
        e1?.restaurante == e2?.restaurante &&
        e1?.image == e2?.image &&
        e1?.tamanho == e2?.tamanho &&
        e1?.isActive == e2?.isActive &&
        e1?.qtdSabores == e2?.qtdSabores &&
        e1?.personalizado == e2?.personalizado &&
        listEquality.equals(e1?.categoria, e2?.categoria);
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.preco,
        e?.sabor,
        e?.descri,
        e?.restaurante,
        e?.image,
        e?.tamanho,
        e?.isActive,
        e?.qtdSabores,
        e?.personalizado,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
