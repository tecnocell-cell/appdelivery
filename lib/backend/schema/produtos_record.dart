import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

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

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "restaurante" field.
  DocumentReference? _restaurante;
  DocumentReference? get restaurante => _restaurante;
  bool hasRestaurante() => _restaurante != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _sabor = snapshotData['sabor'] as String?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _descri = snapshotData['descri'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _restaurante = snapshotData['restaurante'] as DocumentReference?;
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
  int? quantidade,
  String? descri,
  DocumentReference? categoria,
  DocumentReference? restaurante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
      'sabor': sabor,
      'quantidade': quantidade,
      'descri': descri,
      'categoria': categoria,
      'restaurante': restaurante,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.sabor == e2?.sabor &&
        e1?.quantidade == e2?.quantidade &&
        e1?.descri == e2?.descri &&
        e1?.categoria == e2?.categoria &&
        e1?.restaurante == e2?.restaurante;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.preco,
        e?.sabor,
        e?.quantidade,
        e?.descri,
        e?.categoria,
        e?.restaurante
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
