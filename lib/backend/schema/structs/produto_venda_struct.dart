// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoVendaStruct extends FFFirebaseStruct {
  ProdutoVendaStruct({
    double? valorSubtotal,
    DocumentReference? produto,
    int? quantidade,
    DocumentReference? usuario,
    DocumentReference? restaurante,
    DocumentReference? adicional,
    DocumentReference? tipoDeMassa,
    String? observacao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _valorSubtotal = valorSubtotal,
        _produto = produto,
        _quantidade = quantidade,
        _usuario = usuario,
        _restaurante = restaurante,
        _adicional = adicional,
        _tipoDeMassa = tipoDeMassa,
        _observacao = observacao,
        super(firestoreUtilData);

  // "valorSubtotal" field.
  double? _valorSubtotal;
  double get valorSubtotal => _valorSubtotal ?? 0.0;
  set valorSubtotal(double? val) => _valorSubtotal = val;
  void incrementValorSubtotal(double amount) =>
      _valorSubtotal = valorSubtotal + amount;
  bool hasValorSubtotal() => _valorSubtotal != null;

  // "produto" field.
  DocumentReference? _produto;
  DocumentReference? get produto => _produto;
  set produto(DocumentReference? val) => _produto = val;
  bool hasProduto() => _produto != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  set usuario(DocumentReference? val) => _usuario = val;
  bool hasUsuario() => _usuario != null;

  // "restaurante" field.
  DocumentReference? _restaurante;
  DocumentReference? get restaurante => _restaurante;
  set restaurante(DocumentReference? val) => _restaurante = val;
  bool hasRestaurante() => _restaurante != null;

  // "adicional" field.
  DocumentReference? _adicional;
  DocumentReference? get adicional => _adicional;
  set adicional(DocumentReference? val) => _adicional = val;
  bool hasAdicional() => _adicional != null;

  // "tipoDeMassa" field.
  DocumentReference? _tipoDeMassa;
  DocumentReference? get tipoDeMassa => _tipoDeMassa;
  set tipoDeMassa(DocumentReference? val) => _tipoDeMassa = val;
  bool hasTipoDeMassa() => _tipoDeMassa != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;
  bool hasObservacao() => _observacao != null;

  static ProdutoVendaStruct fromMap(Map<String, dynamic> data) =>
      ProdutoVendaStruct(
        valorSubtotal: castToType<double>(data['valorSubtotal']),
        produto: data['produto'] as DocumentReference?,
        quantidade: castToType<int>(data['quantidade']),
        usuario: data['usuario'] as DocumentReference?,
        restaurante: data['restaurante'] as DocumentReference?,
        adicional: data['adicional'] as DocumentReference?,
        tipoDeMassa: data['tipoDeMassa'] as DocumentReference?,
        observacao: data['observacao'] as String?,
      );

  static ProdutoVendaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProdutoVendaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'valorSubtotal': _valorSubtotal,
        'produto': _produto,
        'quantidade': _quantidade,
        'usuario': _usuario,
        'restaurante': _restaurante,
        'adicional': _adicional,
        'tipoDeMassa': _tipoDeMassa,
        'observacao': _observacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'valorSubtotal': serializeParam(
          _valorSubtotal,
          ParamType.double,
        ),
        'produto': serializeParam(
          _produto,
          ParamType.DocumentReference,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DocumentReference,
        ),
        'restaurante': serializeParam(
          _restaurante,
          ParamType.DocumentReference,
        ),
        'adicional': serializeParam(
          _adicional,
          ParamType.DocumentReference,
        ),
        'tipoDeMassa': serializeParam(
          _tipoDeMassa,
          ParamType.DocumentReference,
        ),
        'observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutoVendaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutoVendaStruct(
        valorSubtotal: deserializeParam(
          data['valorSubtotal'],
          ParamType.double,
          false,
        ),
        produto: deserializeParam(
          data['produto'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['produtos'],
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        usuario: deserializeParam(
          data['usuario'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        restaurante: deserializeParam(
          data['restaurante'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['restaurante'],
        ),
        adicional: deserializeParam(
          data['adicional'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['adicionais'],
        ),
        tipoDeMassa: deserializeParam(
          data['tipoDeMassa'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['tipoDeMassa'],
        ),
        observacao: deserializeParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
      );

  static ProdutoVendaStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ProdutoVendaStruct(
        valorSubtotal: convertAlgoliaParam(
          data['valorSubtotal'],
          ParamType.double,
          false,
        ),
        produto: convertAlgoliaParam(
          data['produto'],
          ParamType.DocumentReference,
          false,
        ),
        quantidade: convertAlgoliaParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        usuario: convertAlgoliaParam(
          data['usuario'],
          ParamType.DocumentReference,
          false,
        ),
        restaurante: convertAlgoliaParam(
          data['restaurante'],
          ParamType.DocumentReference,
          false,
        ),
        adicional: convertAlgoliaParam(
          data['adicional'],
          ParamType.DocumentReference,
          false,
        ),
        tipoDeMassa: convertAlgoliaParam(
          data['tipoDeMassa'],
          ParamType.DocumentReference,
          false,
        ),
        observacao: convertAlgoliaParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ProdutoVendaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoVendaStruct &&
        valorSubtotal == other.valorSubtotal &&
        produto == other.produto &&
        quantidade == other.quantidade &&
        usuario == other.usuario &&
        restaurante == other.restaurante &&
        adicional == other.adicional &&
        tipoDeMassa == other.tipoDeMassa &&
        observacao == other.observacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        valorSubtotal,
        produto,
        quantidade,
        usuario,
        restaurante,
        adicional,
        tipoDeMassa,
        observacao
      ]);
}

ProdutoVendaStruct createProdutoVendaStruct({
  double? valorSubtotal,
  DocumentReference? produto,
  int? quantidade,
  DocumentReference? usuario,
  DocumentReference? restaurante,
  DocumentReference? adicional,
  DocumentReference? tipoDeMassa,
  String? observacao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutoVendaStruct(
      valorSubtotal: valorSubtotal,
      produto: produto,
      quantidade: quantidade,
      usuario: usuario,
      restaurante: restaurante,
      adicional: adicional,
      tipoDeMassa: tipoDeMassa,
      observacao: observacao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutoVendaStruct? updateProdutoVendaStruct(
  ProdutoVendaStruct? produtoVenda, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtoVenda
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutoVendaStructData(
  Map<String, dynamic> firestoreData,
  ProdutoVendaStruct? produtoVenda,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtoVenda == null) {
    return;
  }
  if (produtoVenda.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtoVenda.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtoVendaData =
      getProdutoVendaFirestoreData(produtoVenda, forFieldValue);
  final nestedData =
      produtoVendaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtoVenda.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutoVendaFirestoreData(
  ProdutoVendaStruct? produtoVenda, [
  bool forFieldValue = false,
]) {
  if (produtoVenda == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtoVenda.toMap());

  // Add any Firestore field values
  produtoVenda.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutoVendaListFirestoreData(
  List<ProdutoVendaStruct>? produtoVendas,
) =>
    produtoVendas?.map((e) => getProdutoVendaFirestoreData(e, true)).toList() ??
    [];
