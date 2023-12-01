// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BordaRefStruct extends FFFirebaseStruct {
  BordaRefStruct({
    String? nome,
    double? preco,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _preco = preco,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

  static BordaRefStruct fromMap(Map<String, dynamic> data) => BordaRefStruct(
        nome: data['nome'] as String?,
        preco: castToType<double>(data['preco']),
      );

  static BordaRefStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? BordaRefStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'preco': _preco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
      }.withoutNulls;

  static BordaRefStruct fromSerializableMap(Map<String, dynamic> data) =>
      BordaRefStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
      );

  static BordaRefStruct fromAlgoliaData(Map<String, dynamic> data) =>
      BordaRefStruct(
        nome: convertAlgoliaParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        preco: convertAlgoliaParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'BordaRefStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BordaRefStruct &&
        nome == other.nome &&
        preco == other.preco;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, preco]);
}

BordaRefStruct createBordaRefStruct({
  String? nome,
  double? preco,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BordaRefStruct(
      nome: nome,
      preco: preco,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BordaRefStruct? updateBordaRefStruct(
  BordaRefStruct? bordaRef, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    bordaRef
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBordaRefStructData(
  Map<String, dynamic> firestoreData,
  BordaRefStruct? bordaRef,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (bordaRef == null) {
    return;
  }
  if (bordaRef.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && bordaRef.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final bordaRefData = getBordaRefFirestoreData(bordaRef, forFieldValue);
  final nestedData = bordaRefData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = bordaRef.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBordaRefFirestoreData(
  BordaRefStruct? bordaRef, [
  bool forFieldValue = false,
]) {
  if (bordaRef == null) {
    return {};
  }
  final firestoreData = mapToFirestore(bordaRef.toMap());

  // Add any Firestore field values
  bordaRef.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBordaRefListFirestoreData(
  List<BordaRefStruct>? bordaRefs,
) =>
    bordaRefs?.map((e) => getBordaRefFirestoreData(e, true)).toList() ?? [];
