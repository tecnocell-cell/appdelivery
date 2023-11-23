// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends FFFirebaseStruct {
  PedidoStruct({
    String? nomePedido,
    double? preco,
    int? quantidade,
    String? img,
    String? id,
    String? categoaria,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomePedido = nomePedido,
        _preco = preco,
        _quantidade = quantidade,
        _img = img,
        _id = id,
        _categoaria = categoaria,
        super(firestoreUtilData);

  // "nome_pedido" field.
  String? _nomePedido;
  String get nomePedido => _nomePedido ?? '';
  set nomePedido(String? val) => _nomePedido = val;
  bool hasNomePedido() => _nomePedido != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "categoaria" field.
  String? _categoaria;
  String get categoaria => _categoaria ?? '';
  set categoaria(String? val) => _categoaria = val;
  bool hasCategoaria() => _categoaria != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nomePedido: data['nome_pedido'] as String?,
        preco: castToType<double>(data['preco']),
        quantidade: castToType<int>(data['quantidade']),
        img: data['img'] as String?,
        id: data['id'] as String?,
        categoaria: data['categoaria'] as String?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_pedido': _nomePedido,
        'preco': _preco,
        'quantidade': _quantidade,
        'img': _img,
        'id': _id,
        'categoaria': _categoaria,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_pedido': serializeParam(
          _nomePedido,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'categoaria': serializeParam(
          _categoaria,
          ParamType.String,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        nomePedido: deserializeParam(
          data['nome_pedido'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
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
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        categoaria: deserializeParam(
          data['categoaria'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        nomePedido == other.nomePedido &&
        preco == other.preco &&
        quantidade == other.quantidade &&
        img == other.img &&
        id == other.id &&
        categoaria == other.categoaria;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nomePedido, preco, quantidade, img, id, categoaria]);
}

PedidoStruct createPedidoStruct({
  String? nomePedido,
  double? preco,
  int? quantidade,
  String? img,
  String? id,
  String? categoaria,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidoStruct(
      nomePedido: nomePedido,
      preco: preco,
      quantidade: quantidade,
      img: img,
      id: id,
      categoaria: categoaria,
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
