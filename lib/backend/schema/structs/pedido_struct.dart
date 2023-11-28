// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends FFFirebaseStruct {
  PedidoStruct({
    int? quantidade,
    String? img,
    double? subTotal,
    DocumentReference? produto,
    DocumentReference? usuario,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantidade = quantidade,
        _img = img,
        _subTotal = subTotal,
        _produto = produto,
        _usuario = usuario,
        super(firestoreUtilData);

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;
  void incrementSubTotal(double amount) => _subTotal = subTotal + amount;
  bool hasSubTotal() => _subTotal != null;

  // "produto" field.
  DocumentReference? _produto;
  DocumentReference? get produto => _produto;
  set produto(DocumentReference? val) => _produto = val;
  bool hasProduto() => _produto != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  set usuario(DocumentReference? val) => _usuario = val;
  bool hasUsuario() => _usuario != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        quantidade: castToType<int>(data['quantidade']),
        img: data['img'] as String?,
        subTotal: castToType<double>(data['subTotal']),
        produto: data['produto'] as DocumentReference?,
        usuario: data['usuario'] as DocumentReference?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'quantidade': _quantidade,
        'img': _img,
        'subTotal': _subTotal,
        'produto': _produto,
        'usuario': _usuario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'subTotal': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'produto': serializeParam(
          _produto,
          ParamType.DocumentReference,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        subTotal: deserializeParam(
          data['subTotal'],
          ParamType.double,
          false,
        ),
        produto: deserializeParam(
          data['produto'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['produtos'],
        ),
        usuario: deserializeParam(
          data['usuario'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  static PedidoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      PedidoStruct(
        quantidade: convertAlgoliaParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        img: convertAlgoliaParam(
          data['img'],
          ParamType.String,
          false,
        ),
        subTotal: convertAlgoliaParam(
          data['subTotal'],
          ParamType.double,
          false,
        ),
        produto: convertAlgoliaParam(
          data['produto'],
          ParamType.DocumentReference,
          false,
        ),
        usuario: convertAlgoliaParam(
          data['usuario'],
          ParamType.DocumentReference,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        quantidade == other.quantidade &&
        img == other.img &&
        subTotal == other.subTotal &&
        produto == other.produto &&
        usuario == other.usuario;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quantidade, img, subTotal, produto, usuario]);
}

PedidoStruct createPedidoStruct({
  int? quantidade,
  String? img,
  double? subTotal,
  DocumentReference? produto,
  DocumentReference? usuario,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidoStruct(
      quantidade: quantidade,
      img: img,
      subTotal: subTotal,
      produto: produto,
      usuario: usuario,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PedidoStruct? updatePedidoStruct(
  PedidoStruct? pedido, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pedido
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPedidoStructData(
  Map<String, dynamic> firestoreData,
  PedidoStruct? pedido,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pedido == null) {
    return;
  }
  if (pedido.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pedido.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pedidoData = getPedidoFirestoreData(pedido, forFieldValue);
  final nestedData = pedidoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pedido.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPedidoFirestoreData(
  PedidoStruct? pedido, [
  bool forFieldValue = false,
]) {
  if (pedido == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pedido.toMap());

  // Add any Firestore field values
  pedido.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPedidoListFirestoreData(
  List<PedidoStruct>? pedidos,
) =>
    pedidos?.map((e) => getPedidoFirestoreData(e, true)).toList() ?? [];
